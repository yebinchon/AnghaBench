; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrcasecmp.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_bstr.c_bstrcasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstrcasecmp(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 8
  %7 = alloca %struct.bstr, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.bstr* %6 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  %12 = bitcast %struct.bstr* %7 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %3, i32* %14, align 8
  store i32 0, i32* %8, align 4
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @MPMIN(i64 %28, i64 %30)
  %32 = call i32 @strncasecmp(i32 %24, i32 %26, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %22, %18, %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %53

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %53

50:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %50, %49, %42
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @strncasecmp(i32, i32, i32) #1

declare dso_local i32 @MPMIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
