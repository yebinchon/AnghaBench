; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/survey/extr_xrespondent.c_nn_xrespondent_create.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/survey/extr_xrespondent.c_nn_xrespondent_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sockbase = type { i32 }
%struct.nn_xrespondent = type { %struct.nn_sockbase }

@.str = private unnamed_addr constant [21 x i8] c"socket (xrespondent)\00", align 1
@nn_xrespondent_sockbase_vfptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nn_sockbase**)* @nn_xrespondent_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_xrespondent_create(i8* %0, %struct.nn_sockbase** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nn_sockbase**, align 8
  %5 = alloca %struct.nn_xrespondent*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nn_sockbase** %1, %struct.nn_sockbase*** %4, align 8
  %6 = call %struct.nn_xrespondent* @nn_alloc(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_xrespondent* %6, %struct.nn_xrespondent** %5, align 8
  %7 = load %struct.nn_xrespondent*, %struct.nn_xrespondent** %5, align 8
  %8 = call i32 @alloc_assert(%struct.nn_xrespondent* %7)
  %9 = load %struct.nn_xrespondent*, %struct.nn_xrespondent** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @nn_xrespondent_init(%struct.nn_xrespondent* %9, i32* @nn_xrespondent_sockbase_vfptr, i8* %10)
  %12 = load %struct.nn_xrespondent*, %struct.nn_xrespondent** %5, align 8
  %13 = getelementptr inbounds %struct.nn_xrespondent, %struct.nn_xrespondent* %12, i32 0, i32 0
  %14 = load %struct.nn_sockbase**, %struct.nn_sockbase*** %4, align 8
  store %struct.nn_sockbase* %13, %struct.nn_sockbase** %14, align 8
  ret i32 0
}

declare dso_local %struct.nn_xrespondent* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.nn_xrespondent*) #1

declare dso_local i32 @nn_xrespondent_init(%struct.nn_xrespondent*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
