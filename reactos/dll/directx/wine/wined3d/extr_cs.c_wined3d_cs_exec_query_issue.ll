; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_query_issue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_query_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, i32 }
%struct.wined3d_cs_query_issue = type { i32, %struct.wined3d_query* }
%struct.wined3d_query = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.wined3d_query*, i32)* }

@WINED3DISSUE_BEGIN = common dso_local global i32 0, align 4
@WINED3DISSUE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_query_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_query_issue(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_query_issue*, align 8
  %6 = alloca %struct.wined3d_query*, align 8
  %7 = alloca i64, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_cs_query_issue*
  store %struct.wined3d_cs_query_issue* %9, %struct.wined3d_cs_query_issue** %5, align 8
  %10 = load %struct.wined3d_cs_query_issue*, %struct.wined3d_cs_query_issue** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs_query_issue, %struct.wined3d_cs_query_issue* %10, i32 0, i32 1
  %12 = load %struct.wined3d_query*, %struct.wined3d_query** %11, align 8
  store %struct.wined3d_query* %12, %struct.wined3d_query** %6, align 8
  %13 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.wined3d_query*, i32)*, i64 (%struct.wined3d_query*, i32)** %16, align 8
  %18 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %19 = load %struct.wined3d_cs_query_issue*, %struct.wined3d_cs_query_issue** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs_query_issue, %struct.wined3d_cs_query_issue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 %17(%struct.wined3d_query* %18, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %78

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %32, i32 0, i32 1
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %38 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %37, i32 0, i32 0
  %39 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %40 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %78

42:                                               ; preds = %31, %28
  %43 = load %struct.wined3d_cs_query_issue*, %struct.wined3d_cs_query_issue** %5, align 8
  %44 = getelementptr inbounds %struct.wined3d_cs_query_issue, %struct.wined3d_cs_query_issue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WINED3DISSUE_BEGIN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %54 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %53, i32 0, i32 1
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %58, i32 0, i32 1
  %60 = call i32 @list_remove(i32* %59)
  %61 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %62 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %61, i32 0, i32 1
  %63 = call i32 @list_init(i32* %62)
  %64 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %65 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %64, i32 0, i32 0
  %66 = call i32 @InterlockedIncrement(i32* %65)
  br label %78

67:                                               ; preds = %52, %49, %42
  %68 = load %struct.wined3d_cs_query_issue*, %struct.wined3d_cs_query_issue** %5, align 8
  %69 = getelementptr inbounds %struct.wined3d_cs_query_issue, %struct.wined3d_cs_query_issue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WINED3DISSUE_END, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.wined3d_query*, %struct.wined3d_query** %6, align 8
  %76 = getelementptr inbounds %struct.wined3d_query, %struct.wined3d_query* %75, i32 0, i32 0
  %77 = call i32 @InterlockedIncrement(i32* %76)
  br label %78

78:                                               ; preds = %27, %36, %57, %74, %67
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
