; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_ifconfig_options_string.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_ifconfig_options_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i64, i64, i32, i32, i64 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@DEV_TYPE_TAP = common dso_local global i64 0, align 8
@DEV_TYPE_TUN = common dso_local global i64 0, align 8
@TOP_SUBNET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[undef]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ifconfig_options_string(%struct.tuntap* %0, i32 %1, i32 %2, %struct.gc_arena* %3) #0 {
  %5 = alloca %struct.tuntap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_arena*, align 8
  %9 = alloca %struct.buffer, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.tuntap* %0, %struct.tuntap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gc_arena* %3, %struct.gc_arena** %8, align 8
  %12 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %13 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %12)
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %16 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %95, label %22

22:                                               ; preds = %19
  %23 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %24 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEV_TYPE_TAP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %30 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEV_TYPE_TUN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %36 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TOP_SUBNET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34, %22
  %41 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %42 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %45 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %49 = call i8* @print_in_addr_t(i32 %47, i32 0, %struct.gc_arena* %48)
  %50 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %51 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %54 = call i8* @print_in_addr_t(i32 %52, i32 0, %struct.gc_arena* %53)
  %55 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %54)
  br label %94

56:                                               ; preds = %34, %28
  %57 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %58 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DEV_TYPE_TUN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %67 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %70 = call i8* @print_in_addr_t(i32 %68, i32 0, %struct.gc_arena* %69)
  store i8* %70, i8** %11, align 8
  %71 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %72 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %75 = call i8* @print_in_addr_t(i32 %73, i32 0, %struct.gc_arena* %74)
  store i8* %75, i8** %10, align 8
  br label %87

76:                                               ; preds = %62
  %77 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %78 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %81 = call i8* @print_in_addr_t(i32 %79, i32 0, %struct.gc_arena* %80)
  store i8* %81, i8** %10, align 8
  %82 = load %struct.tuntap*, %struct.tuntap** %5, align 8
  %83 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %86 = call i8* @print_in_addr_t(i32 %84, i32 0, %struct.gc_arena* %85)
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %76, %65
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %89)
  br label %93

91:                                               ; preds = %56
  %92 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %40
  br label %95

95:                                               ; preds = %94, %19, %4
  %96 = call i8* @BSTR(%struct.buffer* %9)
  ret i8* %96
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i8* @print_in_addr_t(i32, i32, %struct.gc_arena*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
