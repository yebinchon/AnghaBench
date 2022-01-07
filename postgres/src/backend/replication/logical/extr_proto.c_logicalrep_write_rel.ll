; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_write_rel(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pq_sendbyte(i32 %6, i8 signext 82)
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @RelationGetRelid(%struct.TYPE_9__* %9)
  %11 = call i32 @pq_sendint32(i32 %8, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @RelationGetNamespace(%struct.TYPE_9__* %13)
  %15 = call i32 @logicalrep_write_namespace(i32 %12, i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i8* @RelationGetRelationName(%struct.TYPE_9__* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @pq_sendstring(i32 %18, i8* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @pq_sendbyte(i32 %21, i8 signext %26)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @logicalrep_write_attrs(i32 %28, %struct.TYPE_9__* %29)
  ret void
}

declare dso_local i32 @pq_sendbyte(i32, i8 signext) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_9__*) #1

declare dso_local i32 @logicalrep_write_namespace(i32, i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_9__*) #1

declare dso_local i8* @RelationGetRelationName(%struct.TYPE_9__*) #1

declare dso_local i32 @pq_sendstring(i32, i8*) #1

declare dso_local i32 @logicalrep_write_attrs(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
