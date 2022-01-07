; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_prepared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.prepared_statement = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ecpg_prepared(i8* %0, %struct.connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.prepared_statement*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.connection* %1, %struct.connection** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = call %struct.prepared_statement* @ecpg_find_prepared_statement(i8* %6, %struct.connection* %7, i32* null)
  store %struct.prepared_statement* %8, %struct.prepared_statement** %5, align 8
  %9 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %10 = icmp ne %struct.prepared_statement* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %13 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i8* [ %16, %11 ], [ null, %17 ]
  ret i8* %19
}

declare dso_local %struct.prepared_statement* @ecpg_find_prepared_statement(i8*, %struct.connection*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
