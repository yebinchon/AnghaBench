; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_check_expected_areq.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_check_expected_areq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [83 x i8] c"Channel binding required, but server authenticated client without channel binding\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Channel binding required but not supported by server's authentication request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @check_expected_areq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_expected_areq(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 114
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %28 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
    i32 131, label %16
  ]

15:                                               ; preds = %13, %13, %13
  br label %33

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pg_fe_scram_channel_bound(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @libpq_gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @printfPQExpBuffer(i32* %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %16
  br label %33

28:                                               ; preds = %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @libpq_gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @printfPQExpBuffer(i32* %30, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %27, %15
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @pg_fe_scram_channel_bound(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
