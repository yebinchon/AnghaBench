; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGfree_struct_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGfree_struct_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGstruct_member = type { %struct.ECPGstruct_member*, %struct.ECPGstruct_member*, %struct.ECPGstruct_member* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGfree_struct_member(%struct.ECPGstruct_member* %0) #0 {
  %2 = alloca %struct.ECPGstruct_member*, align 8
  %3 = alloca %struct.ECPGstruct_member*, align 8
  store %struct.ECPGstruct_member* %0, %struct.ECPGstruct_member** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %6 = icmp ne %struct.ECPGstruct_member* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  store %struct.ECPGstruct_member* %8, %struct.ECPGstruct_member** %3, align 8
  %9 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %2, align 8
  %10 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %9, i32 0, i32 2
  %11 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %10, align 8
  store %struct.ECPGstruct_member* %11, %struct.ECPGstruct_member** %2, align 8
  %12 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %13 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %12, i32 0, i32 1
  %14 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %13, align 8
  %15 = call i32 @free(%struct.ECPGstruct_member* %14)
  %16 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %17 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %16, i32 0, i32 0
  %18 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %19 = call i32 @free(%struct.ECPGstruct_member* %18)
  %20 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %21 = call i32 @free(%struct.ECPGstruct_member* %20)
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.ECPGstruct_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
