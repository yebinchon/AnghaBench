; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_allocate_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_allocate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, i32* }
%struct.zip_error = type { i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip* (i8*, i32, i32*)* @_zip_allocate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip* @_zip_allocate_new(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zip*, align 8
  %9 = alloca %struct.zip_error, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call %struct.zip* @_zip_new(%struct.zip_error* %9)
  store %struct.zip* %10, %struct.zip** %8, align 8
  %11 = icmp eq %struct.zip* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @set_error(i32* %13, %struct.zip_error* %9, i32 0)
  store %struct.zip* null, %struct.zip** %4, align 8
  br label %42

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.zip*, %struct.zip** %8, align 8
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %37

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @strdup(i8* %22)
  %24 = load %struct.zip*, %struct.zip** %8, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.zip*, %struct.zip** %8, align 8
  %27 = getelementptr inbounds %struct.zip, %struct.zip* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.zip*, %struct.zip** %8, align 8
  %32 = call i32 @zip_discard(%struct.zip* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %35 = call i32 @set_error(i32* %33, %struct.zip_error* null, i32 %34)
  store %struct.zip* null, %struct.zip** %4, align 8
  br label %42

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.zip*, %struct.zip** %8, align 8
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.zip*, %struct.zip** %8, align 8
  store %struct.zip* %41, %struct.zip** %4, align 8
  br label %42

42:                                               ; preds = %37, %30, %12
  %43 = load %struct.zip*, %struct.zip** %4, align 8
  ret %struct.zip* %43
}

declare dso_local %struct.zip* @_zip_new(%struct.zip_error*) #1

declare dso_local i32 @set_error(i32*, %struct.zip_error*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @zip_discard(%struct.zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
