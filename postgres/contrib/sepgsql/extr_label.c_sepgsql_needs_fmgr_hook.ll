; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_needs_fmgr_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_needs_fmgr_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@ProcedureRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__EXECUTE = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__ENTRYPOINT = common dso_local global i32 0, align 4
@SEPGSQL_AVC_NOAUDIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sepgsql_needs_fmgr_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sepgsql_needs_fmgr_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  br i1 true, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @next_needs_fmgr_hook(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, i32* %2, align 4
  br label %30

10:                                               ; preds = %5, %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @sepgsql_avc_trusted_proc(i32 %11)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %30

15:                                               ; preds = %10
  %16 = load i32, i32* @ProcedureRelationId, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %22 = load i32, i32* @SEPG_DB_PROCEDURE__EXECUTE, align 4
  %23 = load i32, i32* @SEPG_DB_PROCEDURE__ENTRYPOINT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SEPGSQL_AVC_NOAUDIT, align 4
  %26 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_3__* %4, i32 %21, i32 %24, i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %14, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @next_needs_fmgr_hook(i32) #1

declare dso_local i32* @sepgsql_avc_trusted_proc(i32) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_3__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
