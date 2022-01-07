; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_registers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"//   %-12s %s%-4u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@table_symbol = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_const_tab*)* @dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_registers(%struct.d3dx_const_tab* %0) #0 {
  %2 = alloca %struct.d3dx_const_tab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.d3dx_const_tab* %0, %struct.d3dx_const_tab** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %68, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %8 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %5
  %12 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %13 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %16 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %14, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %26 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %11
  %34 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %35 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %11
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi i8* [ %42, %33 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = load i32*, i32** @table_symbol, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %52 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %2, align 8
  %60 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %50, i32 %58, i32 %66)
  br label %68

68:                                               ; preds = %44
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %5

71:                                               ; preds = %5
  ret void
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
