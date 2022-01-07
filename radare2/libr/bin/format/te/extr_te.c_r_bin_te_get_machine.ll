; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_machine.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_get_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Alpha 64\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AM33\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"AMD 64\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CEE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CEF\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"EBC\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ia64\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"M32R\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"M68K\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Mips 16\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Mips FPU\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Mips FPU 16\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"PowerPC\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"PowerPC FP\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"R10000\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"R3000\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"R4000\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"SH3\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"SH3DSP\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"SH3E\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"SH4\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"SH5\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Thumb\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Tricore\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"WCE Mips V2\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r_bin_te_get_machine(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %5 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %6 = icmp ne %struct.r_bin_te_obj_t* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %74

8:                                                ; preds = %1
  %9 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %10 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %70 [
    i32 155, label %14
    i32 154, label %16
    i32 153, label %18
    i32 152, label %20
    i32 151, label %22
    i32 150, label %24
    i32 149, label %26
    i32 148, label %28
    i32 147, label %30
    i32 146, label %32
    i32 145, label %34
    i32 144, label %36
    i32 143, label %38
    i32 142, label %40
    i32 141, label %42
    i32 140, label %44
    i32 139, label %46
    i32 138, label %48
    i32 137, label %50
    i32 136, label %52
    i32 135, label %54
    i32 134, label %56
    i32 133, label %58
    i32 132, label %60
    i32 131, label %62
    i32 130, label %64
    i32 129, label %66
    i32 128, label %68
  ]

14:                                               ; preds = %8
  %15 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  br label %72

16:                                               ; preds = %8
  %17 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %72

18:                                               ; preds = %8
  %19 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  br label %72

20:                                               ; preds = %8
  %21 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  br label %72

22:                                               ; preds = %8
  %23 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  br label %72

24:                                               ; preds = %8
  %25 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  br label %72

26:                                               ; preds = %8
  %27 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  br label %72

28:                                               ; preds = %8
  %29 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %29, i8** %4, align 8
  br label %72

30:                                               ; preds = %8
  %31 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  br label %72

32:                                               ; preds = %8
  %33 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  br label %72

34:                                               ; preds = %8
  %35 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  br label %72

36:                                               ; preds = %8
  %37 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %72

38:                                               ; preds = %8
  %39 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %39, i8** %4, align 8
  br label %72

40:                                               ; preds = %8
  %41 = call i8* @strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %72

42:                                               ; preds = %8
  %43 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  br label %72

44:                                               ; preds = %8
  %45 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i8* %45, i8** %4, align 8
  br label %72

46:                                               ; preds = %8
  %47 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i8* %47, i8** %4, align 8
  br label %72

48:                                               ; preds = %8
  %49 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  br label %72

50:                                               ; preds = %8
  %51 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  store i8* %51, i8** %4, align 8
  br label %72

52:                                               ; preds = %8
  %53 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  br label %72

54:                                               ; preds = %8
  %55 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  store i8* %55, i8** %4, align 8
  br label %72

56:                                               ; preds = %8
  %57 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  store i8* %57, i8** %4, align 8
  br label %72

58:                                               ; preds = %8
  %59 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  br label %72

60:                                               ; preds = %8
  %61 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  br label %72

62:                                               ; preds = %8
  %63 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  store i8* %63, i8** %4, align 8
  br label %72

64:                                               ; preds = %8
  %65 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  store i8* %65, i8** %4, align 8
  br label %72

66:                                               ; preds = %8
  %67 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  store i8* %67, i8** %4, align 8
  br label %72

68:                                               ; preds = %8
  %69 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  store i8* %69, i8** %4, align 8
  br label %72

70:                                               ; preds = %8
  %71 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %2, align 8
  br label %74

74:                                               ; preds = %72, %7
  %75 = load i8*, i8** %2, align 8
  ret i8* %75
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
