; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_drop_descriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_drop_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { %struct.descriptor*, %struct.descriptor*, %struct.descriptor* }

@descriptors = common dso_local global %struct.descriptor* null, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"descriptor \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drop_descriptor(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.descriptor*, align 8
  %6 = alloca %struct.descriptor**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.descriptor** @descriptors, %struct.descriptor*** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 34
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.descriptor*, %struct.descriptor** @descriptors, align 8
  store %struct.descriptor* %14, %struct.descriptor** %5, align 8
  br label %15

15:                                               ; preds = %71, %13
  %16 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %17 = icmp ne %struct.descriptor* %16, null
  br i1 %17, label %18, label %77

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %20, i32 0, i32 0
  %22 = load %struct.descriptor*, %struct.descriptor** %21, align 8
  %23 = call i64 @strcmp(i8* %19, %struct.descriptor* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %29, i32 0, i32 1
  %31 = load %struct.descriptor*, %struct.descriptor** %30, align 8
  %32 = icmp ne %struct.descriptor* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28, %25
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  %37 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %38 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %37, i32 0, i32 1
  %39 = load %struct.descriptor*, %struct.descriptor** %38, align 8
  %40 = icmp ne %struct.descriptor* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %44 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %43, i32 0, i32 1
  %45 = load %struct.descriptor*, %struct.descriptor** %44, align 8
  %46 = call i64 @strcmp(i8* %42, %struct.descriptor* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %41, %28
  %49 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %50 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %49, i32 0, i32 2
  %51 = load %struct.descriptor*, %struct.descriptor** %50, align 8
  %52 = load %struct.descriptor**, %struct.descriptor*** %6, align 8
  store %struct.descriptor* %51, %struct.descriptor** %52, align 8
  %53 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %54 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %53, i32 0, i32 1
  %55 = load %struct.descriptor*, %struct.descriptor** %54, align 8
  %56 = icmp ne %struct.descriptor* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %59 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %58, i32 0, i32 1
  %60 = load %struct.descriptor*, %struct.descriptor** %59, align 8
  %61 = call i32 @free(%struct.descriptor* %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %64 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %63, i32 0, i32 0
  %65 = load %struct.descriptor*, %struct.descriptor** %64, align 8
  %66 = call i32 @free(%struct.descriptor* %65)
  %67 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %68 = call i32 @free(%struct.descriptor* %67)
  br label %82

69:                                               ; preds = %41, %36, %33
  br label %70

70:                                               ; preds = %69, %18
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %73 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %72, i32 0, i32 2
  store %struct.descriptor** %73, %struct.descriptor*** %6, align 8
  %74 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %75 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %74, i32 0, i32 2
  %76 = load %struct.descriptor*, %struct.descriptor** %75, align 8
  store %struct.descriptor* %76, %struct.descriptor** %5, align 8
  br label %15

77:                                               ; preds = %15
  %78 = load i32, i32* @PARSE_ERROR, align 4
  %79 = load i32, i32* @ET_WARNING, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @mmerror(i32 %78, i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %77, %62, %12
  ret void
}

declare dso_local i64 @strcmp(i8*, %struct.descriptor*) #1

declare dso_local i32 @free(%struct.descriptor*) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
