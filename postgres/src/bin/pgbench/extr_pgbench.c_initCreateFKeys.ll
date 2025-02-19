; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreateFKeys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreateFKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initCreateFKeys.DDLKEYs = internal constant [5 x i8*] [i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [114 x i8] c"alter table pgbench_tellers add constraint pgbench_tellers_bid_fkey foreign key (bid) references pgbench_branches\00", align 1
@.str.1 = private unnamed_addr constant [116 x i8] c"alter table pgbench_accounts add constraint pgbench_accounts_bid_fkey foreign key (bid) references pgbench_branches\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"alter table pgbench_history add constraint pgbench_history_bid_fkey foreign key (bid) references pgbench_branches\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"alter table pgbench_history add constraint pgbench_history_tid_fkey foreign key (tid) references pgbench_tellers\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"alter table pgbench_history add constraint pgbench_history_aid_fkey foreign key (aid) references pgbench_accounts\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"creating foreign keys...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @initCreateFKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initCreateFKeys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @lengthof(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @initCreateFKeys.DDLKEYs, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* @initCreateFKeys.DDLKEYs, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @executeStatement(i32* %11, i8* %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @lengthof(i8**) #1

declare dso_local i32 @executeStatement(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
