; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_dump_type.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_dump_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"------------------------\0A\00", align 1
@VT_BTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"BTYPE = %d \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[UNION]\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[STRUCT]\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[PTR]\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"[ENUM]\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"[INT64_T]\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"[INT32_T]\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"[INT16_T]\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[INT8_T]\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"v = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"var = %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"asm_label = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"r = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"associated type:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_type(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %83

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VT_BTYPE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 129, label %22
    i32 130, label %24
    i32 135, label %26
    i32 132, label %28
    i32 133, label %30
    i32 134, label %32
    i32 131, label %34
  ]

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %38

22:                                               ; preds = %10
  %23 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %38

24:                                               ; preds = %10
  %25 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %38

26:                                               ; preds = %10
  %27 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %38

28:                                               ; preds = %10
  %29 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %38

30:                                               ; preds = %10
  %31 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %38

32:                                               ; preds = %10
  %33 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %38

34:                                               ; preds = %10
  %35 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %38

36:                                               ; preds = %10
  %37 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34, %32, %30, %28, %26, %24, %22, %20
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %48)
  store i8* null, i8** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @get_tok_str(i32 %54, i32* null)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %43
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  %82 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %83

83:                                               ; preds = %9, %75, %38
  ret void
}

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @get_tok_str(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
