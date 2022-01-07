; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_global = type { %struct.TYPE_3__, %struct.ubus_object }
%struct.TYPE_3__ = type { i8* }
%struct.ubus_object = type { i32, i32, %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"wpa_supplicant\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@wpas_daemon_object_type = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_ubus_add(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  %6 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %6, i32 0, i32 1
  store %struct.ubus_object* %7, %struct.ubus_object** %3, align 8
  %8 = call i32 (...) @wpas_ubus_init()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %68

11:                                               ; preds = %1
  %12 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %11
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @malloc(i32 %29)
  %31 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %32 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %34 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %28
  %43 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %44 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcat(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %48 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %51 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcat(i32 %49, i8* %53)
  br label %55

55:                                               ; preds = %42, %28
  %56 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %57 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %56, i32 0, i32 2
  store %struct.TYPE_4__* @wpas_daemon_object_type, %struct.TYPE_4__** %57, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wpas_daemon_object_type, i32 0, i32 1), align 4
  %59 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %60 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wpas_daemon_object_type, i32 0, i32 0), align 4
  %62 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %63 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ctx, align 4
  %65 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %66 = call i32 @ubus_add_object(i32 %64, %struct.ubus_object* %65)
  store i32 %66, i32* %5, align 4
  %67 = call i32 (...) @wpas_ubus_ref_inc()
  br label %68

68:                                               ; preds = %55, %10
  ret void
}

declare dso_local i32 @wpas_ubus_init(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @ubus_add_object(i32, %struct.ubus_object*) #1

declare dso_local i32 @wpas_ubus_ref_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
