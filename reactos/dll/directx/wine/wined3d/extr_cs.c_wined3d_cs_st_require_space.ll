; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_st_require_space.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_st_require_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wined3d_cs*, i64, i32)* @wined3d_cs_st_require_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wined3d_cs_st_require_space(%struct.wined3d_cs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = icmp ugt i64 %10, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = call i64 @max(i64 %21, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @heap_realloc(i8* %34, i64 %35)
  store i8* %36, i8** %9, align 8
  br label %40

37:                                               ; preds = %20
  %38 = load i64, i64* %8, align 8
  %39 = call i8* @heap_alloc(i64 %38)
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %69

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %44, %3
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %59 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %63 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr i8, i8* %64, i64 %67
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %56, %43
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i64 @max(i64, i32) #1

declare dso_local i8* @heap_realloc(i8*, i64) #1

declare dso_local i8* @heap_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
