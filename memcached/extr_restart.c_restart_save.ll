; ModuleID = '/home/carl/AnghaBench/memcached/extr_restart.c_restart_save.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_restart.c_restart_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 (i8*, %struct.TYPE_6__*, i32)*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c".meta\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to write metadata file\00", align 1
@cb_stack = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"T%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @restart_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restart_save(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add i64 %13, %15
  %17 = add i64 %16, 1
  %18 = call i8* @calloc(i32 1, i64 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @memcpy(i8* %19, i8* %20, i64 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = call i32 @memcpy(i8* %25, i8* %26, i64 %28)
  %30 = load i32, i32* @S_IRUSR, align 4
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = call i32 @umask(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @umask(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %77

43:                                               ; preds = %1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cb_stack, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  br label %47

47:                                               ; preds = %68, %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64 (i8*, %struct.TYPE_6__*, i32)*, i64 (i8*, %struct.TYPE_6__*, i32)** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 %58(i8* %61, %struct.TYPE_6__* %10, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %77

68:                                               ; preds = %50
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %9, align 8
  br label %47

72:                                               ; preds = %47
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %67, %41
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
