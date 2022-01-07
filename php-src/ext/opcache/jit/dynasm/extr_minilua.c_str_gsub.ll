; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_str_gsub.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_str_gsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@.str = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_gsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 1, i64* %3)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_type(i32* %17, i32 3)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32 @luaL_optint(i32* %19, i32 4, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %27 ], [ 0, %30 ]
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 5
  br label %45

45:                                               ; preds = %42, %39, %36, %31
  %46 = phi i1 [ true, %39 ], [ true, %36 ], [ true, %31 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @luaL_argcheck(i32* %33, i32 %47, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @luaL_buffinit(i32* %49, i32* %11)
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32* %51, i32** %52, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %102, %45
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i8* @match(%struct.TYPE_4__* %10, i8* %65, i8* %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @add_value(%struct.TYPE_4__* %10, i32* %11, i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** %12, align 8
  store i8* %84, i8** %4, align 8
  br label %98

85:                                               ; preds = %79, %76
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ult i8* %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 @luaL_addchar(i32* %11, i32 %94)
  br label %97

96:                                               ; preds = %85
  br label %103

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %103

102:                                              ; preds = %98
  br label %59

103:                                              ; preds = %101, %96, %59
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @luaL_addlstring(i32* %11, i8* %104, i32 %111)
  %113 = call i32 @luaL_pushresult(i32* %11)
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @lua_pushinteger(i32* %114, i32 %115)
  ret i32 2
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @add_value(%struct.TYPE_4__*, i32*, i8*, i8*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
