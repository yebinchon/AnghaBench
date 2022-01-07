; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_register_dummy_class.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_register_dummy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@register_dummy_class.created = internal global i32 0, align 4
@CS_OWNDC = common dso_local global i32 0, align 4
@DefWindowProcA = common dso_local global i64 0, align 8
@DUMMY_WNDCLASS = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to register dummy GL window class, %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_dummy_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dummy_class() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 32, i1 false)
  %4 = load i32, i32* @CS_OWNDC, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %6 = call i32 @GetModuleHandleW(i32* null)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = load i64, i64* @DefWindowProcA, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* @DUMMY_WNDCLASS, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @register_dummy_class.created, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %23

15:                                               ; preds = %0
  %16 = call i32 @RegisterClassA(%struct.TYPE_3__* %2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %1, align 4
  br label %23

22:                                               ; preds = %15
  store i32 1, i32* @register_dummy_class.created, align 4
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetModuleHandleW(i32*) #2

declare dso_local i32 @RegisterClassA(%struct.TYPE_3__*) #2

declare dso_local i32 @blog(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
