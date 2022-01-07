; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_slurp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radiff2.c_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"opencore failed\0A\00", align 1
@ST32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"slurp: read error\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"slurp: Invalid file size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i8*, i32*)* @slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @slurp(%struct.TYPE_4__** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %13 = icmp ne %struct.TYPE_4__** %12, null
  br i1 %13, label %14, label %80

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %80

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strstr(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %17
  store i32* null, i32** %10, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call %struct.TYPE_4__* @opencore(i32* null)
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %85

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32* @r_io_open(i32* %39, i8* %40, i32 0, i32 0)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32* null, i32** %4, align 8
  br label %85

45:                                               ; preds = %34
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @r_io_size(i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ST32_MAX, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i32* @calloc(i32 1, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @r_io_read_at(i32* %57, i32 0, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %73

69:                                               ; preds = %54
  %70 = call i32 @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @R_FREE(i32* %71)
  br label %73

73:                                               ; preds = %69, %68
  br label %76

74:                                               ; preds = %50, %45
  %75 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @r_io_desc_close(i32* %77)
  %79 = load i32*, i32** %10, align 8
  store i32* %79, i32** %4, align 8
  br label %85

80:                                               ; preds = %17, %14, %3
  %81 = load i8*, i8** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @r_file_slurp(i8* %81, i32* %82)
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %80, %76, %44, %32
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @opencore(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32* @r_io_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @r_io_size(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @r_io_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local i32 @r_io_desc_close(i32*) #1

declare dso_local i64 @r_file_slurp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
