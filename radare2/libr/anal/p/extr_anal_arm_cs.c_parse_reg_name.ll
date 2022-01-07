; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_parse_reg_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_parse_reg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32*, i32)* @parse_reg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reg_name(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call { i64, i64 } @INSOP(i32 %12)
  %14 = bitcast %struct.TYPE_8__* %11 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %91 [
    i32 128, label %21
    i32 129, label %29
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @cs_reg_name(i32 %22, i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %92

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @is_valid(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @cs_reg_name(i32 %42, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @cs_reg_name(i32 %50, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %90

58:                                               ; preds = %35, %29
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @is_valid(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @cs_reg_name(i32 %65, i32 %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %89

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @is_valid(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @cs_reg_name(i32 %80, i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %79, %73
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %41
  br label %92

91:                                               ; preds = %5
  br label %92

92:                                               ; preds = %91, %90, %21
  ret i32 0
}

declare dso_local { i64, i64 } @INSOP(i32) #1

declare dso_local i64 @cs_reg_name(i32, i32) #1

declare dso_local i32 @is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
