; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_pg_detoast_datum_packed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_pg_detoast_datum_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varlena* @pg_detoast_datum_packed(%struct.varlena* %0) #0 {
  %2 = alloca %struct.varlena*, align 8
  %3 = alloca %struct.varlena*, align 8
  store %struct.varlena* %0, %struct.varlena** %3, align 8
  %4 = load %struct.varlena*, %struct.varlena** %3, align 8
  %5 = call i64 @VARATT_IS_COMPRESSED(%struct.varlena* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.varlena*, %struct.varlena** %3, align 8
  %9 = call i64 @VARATT_IS_EXTERNAL(%struct.varlena* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %1
  %12 = load %struct.varlena*, %struct.varlena** %3, align 8
  %13 = call %struct.varlena* @detoast_attr(%struct.varlena* %12)
  store %struct.varlena* %13, %struct.varlena** %2, align 8
  br label %16

14:                                               ; preds = %7
  %15 = load %struct.varlena*, %struct.varlena** %3, align 8
  store %struct.varlena* %15, %struct.varlena** %2, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.varlena*, %struct.varlena** %2, align 8
  ret %struct.varlena* %17
}

declare dso_local i64 @VARATT_IS_COMPRESSED(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(%struct.varlena*) #1

declare dso_local %struct.varlena* @detoast_attr(%struct.varlena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
