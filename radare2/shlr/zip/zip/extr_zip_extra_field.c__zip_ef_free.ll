; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_free.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { %struct.zip_extra_field*, %struct.zip_extra_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_ef_free(%struct.zip_extra_field* %0) #0 {
  %2 = alloca %struct.zip_extra_field*, align 8
  %3 = alloca %struct.zip_extra_field*, align 8
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %6 = icmp ne %struct.zip_extra_field* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %9 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %8, i32 0, i32 1
  %10 = load %struct.zip_extra_field*, %struct.zip_extra_field** %9, align 8
  store %struct.zip_extra_field* %10, %struct.zip_extra_field** %3, align 8
  %11 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %12 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %11, i32 0, i32 0
  %13 = load %struct.zip_extra_field*, %struct.zip_extra_field** %12, align 8
  %14 = call i32 @free(%struct.zip_extra_field* %13)
  %15 = load %struct.zip_extra_field*, %struct.zip_extra_field** %2, align 8
  %16 = call i32 @free(%struct.zip_extra_field* %15)
  %17 = load %struct.zip_extra_field*, %struct.zip_extra_field** %3, align 8
  store %struct.zip_extra_field* %17, %struct.zip_extra_field** %2, align 8
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
