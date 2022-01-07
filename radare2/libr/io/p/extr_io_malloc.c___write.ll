; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_malloc.c___write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*, i32)* @__write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %15, %12, %4
  store i32 -1, i32* %5, align 4
  br label %74

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = call i64 @_io_malloc_off(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = call i64 @_io_malloc_sz(%struct.TYPE_7__* %27)
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %74

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = call i64 @_io_malloc_off(%struct.TYPE_7__* %32)
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = call i64 @_io_malloc_sz(%struct.TYPE_7__* %37)
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = call i64 @_io_malloc_off(%struct.TYPE_7__* %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = call i64 @_io_malloc_sz(%struct.TYPE_7__* %46)
  %48 = sub nsw i64 %45, %47
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %40, %31
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = call i64 @_io_malloc_buf(%struct.TYPE_7__* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = call i64 @_io_malloc_off(%struct.TYPE_7__* %59)
  %61 = add nsw i64 %58, %60
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i64 %61, i32* %62, i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = call i64 @_io_malloc_off(%struct.TYPE_7__* %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i32 @_io_malloc_set_off(%struct.TYPE_7__* %65, i64 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %56, %30, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @_io_malloc_off(%struct.TYPE_7__*) #1

declare dso_local i64 @_io_malloc_sz(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @_io_malloc_buf(%struct.TYPE_7__*) #1

declare dso_local i32 @_io_malloc_set_off(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
