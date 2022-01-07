; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm_prefix_cond.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_arm_prefix_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",}\00\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"zf,?{,\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"zf,!,?{,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cf,?{,\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cf,!,?{,\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nf,?{,\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nf,!,?{,\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vf,?{,\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"vf,!,?{,\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"cf,zf,!,&,?{,\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"cf,!,zf,!,|,?{,\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"nf,vf,^,!,?{,\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"nf,vf,^,?{,\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"zf,!,nf,vf,^,!,&,?{,\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"zf,nf,vf,^,|,?{,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arm_prefix_cond(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %67 [
    i32 141, label %10
    i32 131, label %14
    i32 137, label %18
    i32 135, label %22
    i32 132, label %26
    i32 130, label %30
    i32 128, label %34
    i32 129, label %38
    i32 138, label %42
    i32 134, label %46
    i32 140, label %50
    i32 133, label %54
    i32 139, label %58
    i32 136, label %62
    i32 142, label %66
  ]

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @r_strbuf_setf(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %68

14:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @r_strbuf_setf(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %68

18:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @r_strbuf_setf(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %68

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @r_strbuf_setf(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %68

26:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @r_strbuf_setf(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %68

30:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @r_strbuf_setf(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %68

34:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @r_strbuf_setf(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %68

38:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @r_strbuf_setf(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %68

42:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @r_strbuf_setf(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %68

46:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @r_strbuf_setf(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %68

50:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @r_strbuf_setf(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %68

54:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @r_strbuf_setf(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %68

58:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @r_strbuf_setf(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %68

62:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @r_strbuf_setf(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %68

66:                                               ; preds = %2
  br label %68

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  ret i8* %72
}

declare dso_local i32 @r_strbuf_setf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
