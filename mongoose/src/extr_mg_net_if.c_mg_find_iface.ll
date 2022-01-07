; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_net_if.c_mg_find_iface.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_net_if.c_mg_find_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32, %struct.mg_iface** }
%struct.mg_iface_vtable = type { i32 }
%struct.mg_iface = type { %struct.mg_iface_vtable* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mg_iface* @mg_find_iface(%struct.mg_mgr* %0, %struct.mg_iface_vtable* %1, %struct.mg_iface* %2) #0 {
  %4 = alloca %struct.mg_iface*, align 8
  %5 = alloca %struct.mg_mgr*, align 8
  %6 = alloca %struct.mg_iface_vtable*, align 8
  %7 = alloca %struct.mg_iface*, align 8
  %8 = alloca i32, align 4
  store %struct.mg_mgr* %0, %struct.mg_mgr** %5, align 8
  store %struct.mg_iface_vtable* %1, %struct.mg_iface_vtable** %6, align 8
  store %struct.mg_iface* %2, %struct.mg_iface** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.mg_iface*, %struct.mg_iface** %7, align 8
  %10 = icmp ne %struct.mg_iface* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %15 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %20 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %19, i32 0, i32 1
  %21 = load %struct.mg_iface**, %struct.mg_iface*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %21, i64 %23
  %25 = load %struct.mg_iface*, %struct.mg_iface** %24, align 8
  %26 = load %struct.mg_iface*, %struct.mg_iface** %7, align 8
  %27 = icmp eq %struct.mg_iface* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %12

35:                                               ; preds = %28, %12
  br label %36

36:                                               ; preds = %35, %3
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %40 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %45 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %44, i32 0, i32 1
  %46 = load %struct.mg_iface**, %struct.mg_iface*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %46, i64 %48
  %50 = load %struct.mg_iface*, %struct.mg_iface** %49, align 8
  %51 = getelementptr inbounds %struct.mg_iface, %struct.mg_iface* %50, i32 0, i32 0
  %52 = load %struct.mg_iface_vtable*, %struct.mg_iface_vtable** %51, align 8
  %53 = load %struct.mg_iface_vtable*, %struct.mg_iface_vtable** %6, align 8
  %54 = icmp eq %struct.mg_iface_vtable* %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %57 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %56, i32 0, i32 1
  %58 = load %struct.mg_iface**, %struct.mg_iface*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mg_iface*, %struct.mg_iface** %58, i64 %60
  %62 = load %struct.mg_iface*, %struct.mg_iface** %61, align 8
  store %struct.mg_iface* %62, %struct.mg_iface** %4, align 8
  br label %68

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %37

67:                                               ; preds = %37
  store %struct.mg_iface* null, %struct.mg_iface** %4, align 8
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.mg_iface*, %struct.mg_iface** %4, align 8
  ret %struct.mg_iface* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
