; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_add_descriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_add_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i8*, i8*, %struct.descriptor* }

@descriptors = common dso_local global %struct.descriptor* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_descriptor(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.descriptor*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 34
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = call i8* @mm_alloc(i32 24)
  %14 = bitcast i8* %13 to %struct.descriptor*
  store %struct.descriptor* %14, %struct.descriptor** %5, align 8
  %15 = load %struct.descriptor*, %struct.descriptor** @descriptors, align 8
  %16 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %16, i32 0, i32 2
  store %struct.descriptor* %15, %struct.descriptor** %17, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i8* @mm_alloc(i32 %20)
  %22 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %23 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %25 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %12
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = call i8* @mm_alloc(i32 %34)
  %36 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %37 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %39 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  br label %47

43:                                               ; preds = %12
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %46 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  store %struct.descriptor* %48, %struct.descriptor** @descriptors, align 8
  br label %49

49:                                               ; preds = %47, %11
  ret void
}

declare dso_local i8* @mm_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
