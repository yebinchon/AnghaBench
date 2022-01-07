; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_lockcmds.c_LockViewRecurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_lockcmds.c_LockViewRecurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*)* @LockViewRecurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LockViewRecurse(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NoLock, align 4
  %14 = call %struct.TYPE_9__* @table_open(i32 %12, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = call i32* @get_view_query(%struct.TYPE_9__* %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @lappend_oid(i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @LockViewRecurse_walker(i32* %33, %struct.TYPE_10__* %9)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @list_delete_last(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = load i32, i32* @NoLock, align 4
  %40 = call i32 @table_close(%struct.TYPE_9__* %38, i32 %39)
  ret void
}

declare dso_local %struct.TYPE_9__* @table_open(i32, i32) #1

declare dso_local i32* @get_view_query(%struct.TYPE_9__*) #1

declare dso_local i32 @lappend_oid(i32*, i32) #1

declare dso_local i32 @LockViewRecurse_walker(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @list_delete_last(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
