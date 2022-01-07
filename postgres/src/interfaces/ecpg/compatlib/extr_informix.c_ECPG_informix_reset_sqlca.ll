; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_ECPG_informix_reset_sqlca.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_ECPG_informix_reset_sqlca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { i32 }

@sqlca_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPG_informix_reset_sqlca() #0 {
  %1 = alloca %struct.sqlca_t*, align 8
  %2 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %2, %struct.sqlca_t** %1, align 8
  %3 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %4 = icmp eq %struct.sqlca_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %10

6:                                                ; preds = %0
  %7 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %8 = bitcast %struct.sqlca_t* %7 to i8*
  %9 = call i32 @memcpy(i8* %8, i8* bitcast (i32* @sqlca_init to i8*), i32 4)
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
