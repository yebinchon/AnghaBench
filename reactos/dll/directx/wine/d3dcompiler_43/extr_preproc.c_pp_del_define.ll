; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_del_define.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_preproc.c_pp_del_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@pp_status = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s was not defined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_del_define(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @pphash(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.TYPE_7__* @pplookup(i8* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pp_status, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @ppy_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %10
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @free_pp_entry(%struct.TYPE_7__* %31, i32 %32)
  br label %34

34:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @pphash(i8*) #1

declare dso_local %struct.TYPE_7__* @pplookup(i8*) #1

declare dso_local i32 @ppy_warning(i8*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @free_pp_entry(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
