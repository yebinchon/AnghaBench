; ModuleID = '/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_message.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"message: transactional: %d prefix: %s, sz: %zu content:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i8*, i32, i8*)* @pg_decode_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_decode_message(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_5__* %15, i32 1)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @appendStringInfo(i32 %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @appendBinaryStringInfo(i32 %26, i8* %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = call i32 @OutputPluginWrite(%struct.TYPE_5__* %30, i32 1)
  ret void
}

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @appendBinaryStringInfo(i32, i8*, i32) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
