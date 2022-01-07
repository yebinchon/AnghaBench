; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_XMLRPC_to_PHP.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_XMLRPC_to_PHP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @XMLRPC_to_PHP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XMLRPC_to_PHP(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @XMLRPC_GetValueType(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %87 [
    i32 131, label %15
    i32 129, label %18
    i32 130, label %30
    i32 134, label %35
    i32 132, label %40
    i32 133, label %45
    i32 135, label %52
    i32 128, label %64
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ZVAL_NULL(i32* %16)
  br label %88

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = call i8* @XMLRPC_GetValueString(i64 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @XMLRPC_GetValueStringLen(i64 %26)
  %28 = call i32 @ZVAL_STRINGL(i32* %24, i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %88

30:                                               ; preds = %11
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @XMLRPC_GetValueInt(i64 %32)
  %34 = call i32 @ZVAL_LONG(i32* %31, i32 %33)
  br label %88

35:                                               ; preds = %11
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @XMLRPC_GetValueBoolean(i64 %37)
  %39 = call i32 @ZVAL_BOOL(i32* %36, i32 %38)
  br label %88

40:                                               ; preds = %11
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @XMLRPC_GetValueDouble(i64 %42)
  %44 = call i32 @ZVAL_DOUBLE(i32* %41, i32 %43)
  br label %88

45:                                               ; preds = %11
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i8* @XMLRPC_GetValueDateTime_ISO8601(i64 %47)
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @XMLRPC_GetValueStringLen(i64 %49)
  %51 = call i32 @ZVAL_STRINGL(i32* %46, i8* %48, i32 %50)
  br label %88

52:                                               ; preds = %11
  %53 = load i64, i64* %3, align 8
  %54 = call i8* @XMLRPC_GetValueBase64(i64 %53)
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @XMLRPC_GetValueStringLen(i64 %60)
  %62 = call i32 @ZVAL_STRINGL(i32* %58, i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  br label %88

64:                                               ; preds = %11
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @array_init(i32* %65)
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @XMLRPC_VectorRewind(i64 %67)
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %83, %64
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = call i32 @ZVAL_UNDEF(i32* %8)
  %74 = load i64, i64* %7, align 8
  call void @XMLRPC_to_PHP(i64 %74, i32* %8)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @Z_ISUNDEF(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @XMLRPC_GetValueID(i64 %80)
  %82 = call i32 @add_zval(i32* %79, i32 %81, i32* %8)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @XMLRPC_VectorNext(i64 %84)
  store i64 %85, i64* %7, align 8
  br label %69

86:                                               ; preds = %69
  br label %88

87:                                               ; preds = %11
  br label %88

88:                                               ; preds = %87, %86, %63, %45, %40, %35, %30, %29, %15
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @set_zval_xmlrpc_type(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %2
  ret void
}

declare dso_local i32 @XMLRPC_GetValueType(i64) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i8* @XMLRPC_GetValueString(i64) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @XMLRPC_GetValueStringLen(i64) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @XMLRPC_GetValueInt(i64) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @XMLRPC_GetValueBoolean(i64) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @XMLRPC_GetValueDouble(i64) #1

declare dso_local i8* @XMLRPC_GetValueDateTime_ISO8601(i64) #1

declare dso_local i8* @XMLRPC_GetValueBase64(i64) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @add_zval(i32*, i32, i32*) #1

declare dso_local i32 @XMLRPC_GetValueID(i64) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

declare dso_local i32 @set_zval_xmlrpc_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
