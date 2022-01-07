; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_free_tpi_stream.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_free_tpi_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 (%struct.TYPE_7__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_tpi_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tpi_stream(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @r_list_iterator(i32 %10)
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %58, %22, %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @r_list_iter_next(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @r_list_iter_get(i32* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %12

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_7__*)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 %33(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 (%struct.TYPE_7__*)* null, i32 (%struct.TYPE_7__*)** %39, align 8
  br label %40

40:                                               ; preds = %29, %23
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @free(i64 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 (%struct.TYPE_7__*)* null, i32 (%struct.TYPE_7__*)** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %46, %40
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = call i32 @R_FREE(%struct.TYPE_5__* %59)
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @r_list_free(i32 %64)
  ret void
}

declare dso_local i32* @r_list_iterator(i32) #1

declare dso_local i64 @r_list_iter_next(i32*) #1

declare dso_local i64 @r_list_iter_get(i32*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @R_FREE(%struct.TYPE_5__*) #1

declare dso_local i32 @r_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
