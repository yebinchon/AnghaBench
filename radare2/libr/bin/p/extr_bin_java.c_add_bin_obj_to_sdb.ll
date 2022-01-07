; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_java.c_add_bin_obj_to_sdb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_java.c_add_bin_obj_to_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @add_bin_obj_to_sdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bin_obj_to_sdb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i8* @r_bin_java_build_obj_key(%struct.TYPE_5__* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @add_sdb_bin_obj(i8* %10, %struct.TYPE_5__* %11)
  %13 = load i32, i32* @DB, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @free(i8* %16)
  br label %18

18:                                               ; preds = %7, %6
  ret void
}

declare dso_local i8* @r_bin_java_build_obj_key(%struct.TYPE_5__*) #1

declare dso_local i32 @add_sdb_bin_obj(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
