; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_get_client_label.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_get_client_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@client_label_func = common dso_local global i8* null, align 8
@client_label_pending = common dso_local global i64 0, align 8
@client_label_committed = common dso_local global i8* null, align 8
@client_label_peer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sepgsql_get_client_label() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i8*, i8** @client_label_func, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8*, i8** @client_label_func, align 8
  store i8* %6, i8** %1, align 8
  br label %34

7:                                                ; preds = %0
  %8 = load i64, i64* @client_label_pending, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* @client_label_pending, align 8
  %12 = call %struct.TYPE_3__* @llast(i64 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %1, align 8
  br label %34

21:                                               ; preds = %10
  br label %28

22:                                               ; preds = %7
  %23 = load i8*, i8** @client_label_committed, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** @client_label_committed, align 8
  store i8* %26, i8** %1, align 8
  br label %34

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** @client_label_peer, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i8*, i8** @client_label_peer, align 8
  store i8* %33, i8** %1, align 8
  br label %34

34:                                               ; preds = %28, %25, %17, %5
  %35 = load i8*, i8** %1, align 8
  ret i8* %35
}

declare dso_local %struct.TYPE_3__* @llast(i64) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
