; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_custom_daa.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_custom_daa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @gb_custom_daa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_custom_daa(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %11, %1
  store i32 0, i32* %2, align 4
  br label %92

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @r_anal_esil_get_parm(%struct.TYPE_9__* %30, i8* %31, i64* %5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %92

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @R_FREE(i8* %36)
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %5, i32* null)
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %5, i32* null)
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 @r_anal_esil_reg_read(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %5, i32* null)
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %35
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 96
  %58 = and i32 %57, 255
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 6
  %65 = and i32 %64, 255
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %59
  br label %88

67:                                               ; preds = %35
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 153
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 96
  %76 = and i32 %75, 255
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 15
  %83 = icmp sgt i32 %82, 9
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 6
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @r_anal_esil_pushnum(%struct.TYPE_9__* %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %34, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_9__*) #1

declare dso_local i32 @r_anal_esil_get_parm(%struct.TYPE_9__*, i8*, i64*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @r_anal_esil_reg_read(%struct.TYPE_9__*, i8*, i64*, i32*) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
