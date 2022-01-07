; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_fd.c_fd_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_fd.c_fd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32, i64, i8*)* @fd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fd_ctrl(%struct.TYPE_4__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 1, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %72 [
    i32 134, label %12
    i32 131, label %13
    i32 130, label %19
    i32 136, label %19
    i32 128, label %24
    i32 129, label %38
    i32 137, label %60
    i32 133, label %65
    i32 135, label %70
    i32 132, label %70
    i32 139, label %71
    i32 138, label %71
  ]

12:                                               ; preds = %4
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %4, %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @UP_lseek(i32 %16, i64 %17, i32 0)
  store i64 %18, i64* %9, align 8
  br label %73

19:                                               ; preds = %4, %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @UP_lseek(i32 %22, i64 0, i32 1)
  store i64 %23, i64* %9, align 8
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = call i32 @fd_free(%struct.TYPE_4__* %25)
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %73

38:                                               ; preds = %4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %9, align 8
  br label %59

58:                                               ; preds = %38
  store i64 -1, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %53
  br label %73

60:                                               ; preds = %4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  br label %73

65:                                               ; preds = %4
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %4, %4
  store i64 0, i64* %9, align 8
  br label %73

71:                                               ; preds = %4, %4
  store i64 1, i64* %9, align 8
  br label %73

72:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %73

73:                                               ; preds = %72, %71, %70, %65, %60, %59, %24, %19, %13
  %74 = load i64, i64* %9, align 8
  ret i64 %74
}

declare dso_local i64 @UP_lseek(i32, i64, i32) #1

declare dso_local i32 @fd_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
