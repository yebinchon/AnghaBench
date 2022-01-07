; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @logicalrep_read_rel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.TYPE_5__* @palloc(i32 32)
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pq_getmsgint(i32 %5, i32 4)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @logicalrep_read_namespace(i32 %9)
  %11 = call i8* @pstrdup(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pq_getmsgstring(i32 %14)
  %16 = call i8* @pstrdup(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pq_getmsgbyte(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 @logicalrep_read_attrs(i32 %23, %struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %26
}

declare dso_local %struct.TYPE_5__* @palloc(i32) #1

declare dso_local i32 @pq_getmsgint(i32, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @logicalrep_read_namespace(i32) #1

declare dso_local i32 @pq_getmsgstring(i32) #1

declare dso_local i32 @pq_getmsgbyte(i32) #1

declare dso_local i32 @logicalrep_read_attrs(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
