; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_query_array_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_query_array_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jsonb_path_query_array_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonb_path_query_array_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = call i32* @PG_GETARG_JSONB_P(i32 0)
  store i32* %11, i32** %6, align 8
  %12 = call i32* @PG_GETARG_JSONPATH_P(i32 1)
  store i32* %12, i32** %7, align 8
  %13 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = call i32* @PG_GETARG_JSONB_P(i32 2)
  store i32* %14, i32** %9, align 8
  %15 = call i32 @PG_GETARG_BOOL(i32 3)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @executeJsonPath(i32* %16, i32* %17, i32* %18, i32 %22, %struct.TYPE_4__* %8, i32 %23)
  %25 = call i32 @wrapItemsInArray(%struct.TYPE_4__* %8)
  %26 = call i32 @JsonbValueToJsonb(i32 %25)
  %27 = call i32 @PG_RETURN_JSONB_P(i32 %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32* @PG_GETARG_JSONB_P(i32) #1

declare dso_local i32* @PG_GETARG_JSONPATH_P(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PG_GETARG_BOOL(i32) #1

declare dso_local i32 @executeJsonPath(i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @PG_RETURN_JSONB_P(i32) #1

declare dso_local i32 @JsonbValueToJsonb(i32) #1

declare dso_local i32 @wrapItemsInArray(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
