; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_pg_detoast_datum_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_pg_detoast_datum_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varlena* @pg_detoast_datum_copy(%struct.varlena* %0) #0 {
  %2 = alloca %struct.varlena*, align 8
  %3 = alloca %struct.varlena*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.varlena*, align 8
  store %struct.varlena* %0, %struct.varlena** %3, align 8
  %6 = load %struct.varlena*, %struct.varlena** %3, align 8
  %7 = call i64 @VARATT_IS_EXTENDED(%struct.varlena* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.varlena*, %struct.varlena** %3, align 8
  %11 = call %struct.varlena* @detoast_attr(%struct.varlena* %10)
  store %struct.varlena* %11, %struct.varlena** %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.varlena*, %struct.varlena** %3, align 8
  %14 = call i32 @VARSIZE(%struct.varlena* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @palloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.varlena*
  store %struct.varlena* %17, %struct.varlena** %5, align 8
  %18 = load %struct.varlena*, %struct.varlena** %5, align 8
  %19 = load %struct.varlena*, %struct.varlena** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @memcpy(%struct.varlena* %18, %struct.varlena* %19, i32 %20)
  %22 = load %struct.varlena*, %struct.varlena** %5, align 8
  store %struct.varlena* %22, %struct.varlena** %2, align 8
  br label %23

23:                                               ; preds = %12, %9
  %24 = load %struct.varlena*, %struct.varlena** %2, align 8
  ret %struct.varlena* %24
}

declare dso_local i64 @VARATT_IS_EXTENDED(%struct.varlena*) #1

declare dso_local %struct.varlena* @detoast_attr(%struct.varlena*) #1

declare dso_local i32 @VARSIZE(%struct.varlena*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.varlena*, %struct.varlena*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
