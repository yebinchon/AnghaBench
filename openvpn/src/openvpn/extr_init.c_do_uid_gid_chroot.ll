; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_uid_gid_chroot.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_uid_gid_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, %struct.TYPE_2__, %struct.context_0* }
%struct.TYPE_2__ = type { i8*, i64, i64 }
%struct.context_0 = type { i32, i32, i32, i64 }

@do_uid_gid_chroot.why_not = internal constant [59 x i8] c"will be delayed because of --client, --pull, or --up-delay\00", align 16
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NOTE: chroot %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"NOTE: UID/GID downgrade %s\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32)* @do_uid_gid_chroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_uid_gid_chroot(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.context_0*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.context*, %struct.context** %3, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 2
  %8 = load %struct.context_0*, %struct.context_0** %7, align 8
  store %struct.context_0* %8, %struct.context_0** %5, align 8
  %9 = load %struct.context_0*, %struct.context_0** %5, align 8
  %10 = icmp ne %struct.context_0* %9, null
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = load %struct.context_0*, %struct.context_0** %5, align 8
  %13 = getelementptr inbounds %struct.context_0, %struct.context_0* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %11
  %17 = load %struct.context*, %struct.context** %3, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.context*, %struct.context** %3, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @platform_chroot(i64 %29)
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.context*, %struct.context** %3, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @M_INFO, align 4
  %38 = call i32 @msg(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @do_uid_gid_chroot.why_not, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.context_0*, %struct.context_0** %5, align 8
  %43 = getelementptr inbounds %struct.context_0, %struct.context_0* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.context_0*, %struct.context_0** %5, align 8
  %51 = getelementptr inbounds %struct.context_0, %struct.context_0* %50, i32 0, i32 2
  %52 = call i32 @platform_group_set(i32* %51)
  %53 = load %struct.context_0*, %struct.context_0** %5, align 8
  %54 = getelementptr inbounds %struct.context_0, %struct.context_0* %53, i32 0, i32 1
  %55 = call i32 @platform_user_set(i32* %54)
  br label %65

56:                                               ; preds = %46
  %57 = load %struct.context*, %struct.context** %3, align 8
  %58 = getelementptr inbounds %struct.context, %struct.context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @M_INFO, align 4
  %63 = call i32 @msg(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @do_uid_gid_chroot.why_not, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.context_0*, %struct.context_0** %5, align 8
  %71 = getelementptr inbounds %struct.context_0, %struct.context_0* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %11, %2
  ret void
}

declare dso_local i32 @platform_chroot(i64) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @platform_group_set(i32*) #1

declare dso_local i32 @platform_user_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
