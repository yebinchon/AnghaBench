; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_nativebtfuzzy-all.c_iscallret.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_nativebtfuzzy-all.c_iscallret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 (i32, i64, i32*, i32)* }
%struct.TYPE_8__ = type { i64 }

@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CALL = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_UCALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @iscallret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscallret(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i32], align 16
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @UT64_MAX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %116

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @strcmp(i64 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %35, 5
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %38 = call i32 %30(i32 %34, i64 %36, i32* %37, i32 5)
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp eq i32 %40, 232
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %116

43:                                               ; preds = %26
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 4
  %49 = load i32, i32* %48, align 16
  %50 = and i32 %49, 240
  %51 = icmp eq i32 %50, 208
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 4
  %54 = load i32, i32* %53, align 16
  %55 = and i32 %54, 240
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 4
  %59 = load i32, i32* %58, align 16
  %60 = and i32 %59, 6
  %61 = icmp ne i32 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %47
  store i32 1, i32* %3, align 4
  br label %116

63:                                               ; preds = %57, %52, %43
  br label %115

64:                                               ; preds = %20, %15
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = sub nsw i64 %73, 8
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %76 = call i32 %68(i32 %72, i64 %74, i32* %75, i32 8)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %80, 8
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %83 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %84 = call i32 @r_anal_op(i32 %79, %struct.TYPE_8__* %7, i64 %81, i32* %82, i32 8, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @R_ANAL_OP_TYPE_CALL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @R_ANAL_OP_TYPE_UCALL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %64
  store i32 1, i32* %3, align 4
  br label %116

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = sub nsw i64 %99, 4
  %101 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %102 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %103 = call i32 @r_anal_op(i32 %98, %struct.TYPE_8__* %7, i64 %100, i32* %101, i32 4, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @R_ANAL_OP_TYPE_CALL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @R_ANAL_OP_TYPE_UCALL, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %95
  store i32 1, i32* %3, align 4
  br label %116

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %63
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %113, %94, %62, %42, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @r_anal_op(i32, %struct.TYPE_8__*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
