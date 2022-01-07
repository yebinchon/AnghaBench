; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_ubus_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_ubus_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hapd_interfaces = type { i8*, %struct.ubus_object }
%struct.ubus_object = type { i32, i32, %struct.TYPE_2__*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hostapd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@daemon_object_type = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_ubus_add(%struct.hapd_interfaces* %0) #0 {
  %2 = alloca %struct.hapd_interfaces*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %2, align 8
  %6 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %2, align 8
  %7 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %6, i32 0, i32 1
  store %struct.ubus_object* %7, %struct.ubus_object** %3, align 8
  %8 = call i32 (...) @hostapd_ubus_init()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %2, align 8
  %15 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %2, align 8
  %20 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @malloc(i32 %27)
  %29 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %30 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %32 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %2, align 8
  %36 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %26
  %40 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %41 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcat(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %45 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %2, align 8
  %48 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcat(i32 %46, i8* %49)
  br label %51

51:                                               ; preds = %39, %26
  %52 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %53 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %52, i32 0, i32 2
  store %struct.TYPE_2__* @daemon_object_type, %struct.TYPE_2__** %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @daemon_object_type, i32 0, i32 1), align 4
  %55 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %56 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @daemon_object_type, i32 0, i32 0), align 4
  %58 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %59 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ctx, align 4
  %61 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %62 = call i32 @ubus_add_object(i32 %60, %struct.ubus_object* %61)
  store i32 %62, i32* %5, align 4
  %63 = call i32 (...) @hostapd_ubus_ref_inc()
  br label %64

64:                                               ; preds = %51, %10
  ret void
}

declare dso_local i32 @hostapd_ubus_init(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @ubus_add_object(i32, %struct.ubus_object*) #1

declare dso_local i32 @hostapd_ubus_ref_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
