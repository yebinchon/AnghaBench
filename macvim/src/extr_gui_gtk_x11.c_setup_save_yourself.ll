; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_setup_save_yourself.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_setup_save_yourself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@save_yourself_atom = common dso_local global i32 0, align 4
@G_IO_ERR = common dso_local global i32 0, align 4
@G_IO_HUP = common dso_local global i32 0, align 4
@G_IO_IN = common dso_local global i32 0, align 4
@local_xsmp_handle_requests = common dso_local global i32 0, align 4
@xsmp_icefd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_save_yourself to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_save_yourself() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64* null, i64** %1, align 8
  store i32 0, i32* %2, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GDK_WINDOW_XDISPLAY(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GDK_WINDOW_XWINDOW(i32 %12)
  %14 = call i64 @XGetWMProtocols(i32 %9, i32 %13, i64** %1, i32* %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %0
  %17 = load i32, i32* @save_yourself_atom, align 4
  %18 = call i64 @GET_X_ATOM(i32 %17)
  store i64 %18, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %33, %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i64*, i64** %1, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @alloc(i32 %45)
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %3, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %40
  %51 = load i64*, i64** %3, align 8
  %52 = load i64*, i64** %1, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i64* %51, i64* %52, i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GDK_WINDOW_XDISPLAY(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GDK_WINDOW_XWINDOW(i32 %69)
  %71 = load i64*, i64** %3, align 8
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @XSetWMProtocols(i32 %66, i32 %70, i64* %71, i32 %73)
  %75 = load i64*, i64** %3, align 8
  %76 = call i32 @vim_free(i64* %75)
  br label %77

77:                                               ; preds = %50, %40
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i64*, i64** %1, align 8
  %80 = call i32 @XFree(i64* %79)
  br label %81

81:                                               ; preds = %78, %0
  ret void
}

declare dso_local i64 @XGetWMProtocols(i32, i32, i64**, i32*) #1

declare dso_local i32 @GDK_WINDOW_XDISPLAY(i32) #1

declare dso_local i32 @GDK_WINDOW_XWINDOW(i32) #1

declare dso_local i64 @GET_X_ATOM(i32) #1

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i64*, i32) #1

declare dso_local i32 @vim_free(i64*) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
