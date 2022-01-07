; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_set_netbuf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_set_netbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netbuf* @__rpc_set_netbuf(%struct.netbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.netbuf*, align 8
  %5 = alloca %struct.netbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.netbuf* %0, %struct.netbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %9 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %15 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %20 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %23 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mem_free(i32* %21, i64 %24)
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i64, i64* %7, align 8
  %28 = call i32* @mem_alloc(i64 %27)
  %29 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %30 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %32 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.netbuf* null, %struct.netbuf** %4, align 8
  br label %50

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %39 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %41 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %44 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @memcpy(i32* %45, i8* %46, i64 %47)
  %49 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  store %struct.netbuf* %49, %struct.netbuf** %4, align 8
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  ret %struct.netbuf* %51
}

declare dso_local i32 @mem_free(i32*, i64) #1

declare dso_local i32* @mem_alloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
