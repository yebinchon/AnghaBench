; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_label.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.grub_nilfs2_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @grub_nilfs2_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_label(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_nilfs2_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @my_mod, align 4
  %11 = call i32 @grub_dl_ref(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.grub_nilfs2_data* @grub_nilfs2_mount(i32 %12)
  store %struct.grub_nilfs2_data* %13, %struct.grub_nilfs2_data** %5, align 8
  %14 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %15 = icmp ne %struct.grub_nilfs2_data* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_nilfs2_data, %struct.grub_nilfs2_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @grub_strndup(i32 %20, i32 14)
  %22 = load i8**, i8*** %4, align 8
  store i8* %21, i8** %22, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i8**, i8*** %4, align 8
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* @my_mod, align 4
  %27 = call i32 @grub_dl_unref(i32 %26)
  %28 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %5, align 8
  %29 = call i32 @grub_free(%struct.grub_nilfs2_data* %28)
  %30 = load i32, i32* @grub_errno, align 4
  ret i32 %30
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_nilfs2_data* @grub_nilfs2_mount(i32) #1

declare dso_local i8* @grub_strndup(i32, i32) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_nilfs2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
