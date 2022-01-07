; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_pending_add_var.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_pending_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_list = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.location, i32, i32 }
%struct.location = type { i32 }

@PENDING_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_list*, i8*, i32, %struct.location*)* @pending_add_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pending_add_var(%struct.pending_list* %0, i8* %1, i32 %2, %struct.location* %3) #0 {
  %5 = alloca %struct.pending_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.location*, align 8
  store %struct.pending_list* %0, %struct.pending_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.location* %3, %struct.location** %8, align 8
  %9 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %10 = call i32 @pending_make_room(%struct.pending_list* %9)
  %11 = load i32, i32* @PENDING_VAR, align 4
  %12 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %13 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %16 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %11, i32* %19, align 4
  %20 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %21 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %24 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @stab_strcpy(i32 %30, i32 4, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @stabs_parse_type(i8* %33)
  %35 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %36 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %39 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %34, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %47 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %50 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %45, i32* %55, align 4
  %56 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %57 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %60 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.location*, %struct.location** %8, align 8
  %67 = bitcast %struct.location* %65 to i8*
  %68 = bitcast %struct.location* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %70 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  ret void
}

declare dso_local i32 @pending_make_room(%struct.pending_list*) #1

declare dso_local i32 @stab_strcpy(i32, i32, i8*) #1

declare dso_local i32 @stabs_parse_type(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
