; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/extr_map.c__cmp_map_event.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/extr_map.c__cmp_map_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_event_t = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_cmp_map_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cmp_map_event(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.map_event_t*, align 8
  %7 = alloca %struct.map_event_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.map_event_t*
  store %struct.map_event_t* %11, %struct.map_event_t** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.map_event_t*
  store %struct.map_event_t* %13, %struct.map_event_t** %7, align 8
  %14 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %15 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %18 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.map_event_t*, %struct.map_event_t** %7, align 8
  %22 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.map_event_t*, %struct.map_event_t** %7, align 8
  %25 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 -1, i32 1
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %2
  %38 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %39 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.map_event_t*, %struct.map_event_t** %7, align 8
  %42 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %47 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 1
  store i32 %52, i32* %3, align 4
  br label %72

53:                                               ; preds = %37
  %54 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %55 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.map_event_t*, %struct.map_event_t** %7, align 8
  %58 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.map_event_t*, %struct.map_event_t** %6, align 8
  %63 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.map_event_t*, %struct.map_event_t** %7, align 8
  %66 = getelementptr inbounds %struct.map_event_t, %struct.map_event_t* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 -1, i32 1
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %61, %45, %31
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
