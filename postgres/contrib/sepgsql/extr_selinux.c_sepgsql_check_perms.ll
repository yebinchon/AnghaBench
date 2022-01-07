; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_check_perms.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_check_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av_decision = type { i32, i32, i32, i32 }

@SELINUX_AVD_FLAGS_PERMISSIVE = common dso_local global i32 0, align 4
@sepgsql_mode = common dso_local global i64 0, align 8
@SEPGSQL_MODE_INTERNAL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SELinux: security policy violation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sepgsql_check_perms(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.av_decision, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @sepgsql_compute_avd(i8* %17, i8* %18, i32 %19, %struct.av_decision* %13)
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  store i32 %25, i32* %14, align 4
  %26 = call i64 (...) @sepgsql_get_debug_audit()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %15, align 4
  br label %52

37:                                               ; preds = %6
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %41, %43
  br label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %46, %48
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %44, %40 ], [ %49, %45 ]
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = call i64 (...) @sepgsql_getenforce()
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SELINUX_AVD_FLAGS_PERMISSIVE, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %64, %58, %55, %52
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i64, i64* @sepgsql_mode, align 8
  %70 = load i64, i64* @SEPGSQL_MODE_INTERNAL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @sepgsql_audit_log(i32 %73, i8* %74, i8* %75, i32 %76, i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %72, %68, %65
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %91 = call i32 @ereport(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %83, %80
  %93 = load i32, i32* %16, align 4
  ret i32 %93
}

declare dso_local i32 @sepgsql_compute_avd(i8*, i8*, i32, %struct.av_decision*) #1

declare dso_local i64 @sepgsql_get_debug_audit(...) #1

declare dso_local i64 @sepgsql_getenforce(...) #1

declare dso_local i32 @sepgsql_audit_log(i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
