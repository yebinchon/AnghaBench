; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGmake_struct_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGmake_struct_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype = type { i32 }
%struct.ECPGstruct_member = type { %struct.ECPGstruct_member*, %struct.ECPGtype*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGmake_struct_member(i8* %0, %struct.ECPGtype* %1, %struct.ECPGstruct_member** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ECPGtype*, align 8
  %6 = alloca %struct.ECPGstruct_member**, align 8
  %7 = alloca %struct.ECPGstruct_member*, align 8
  %8 = alloca %struct.ECPGstruct_member*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ECPGtype* %1, %struct.ECPGtype** %5, align 8
  store %struct.ECPGstruct_member** %2, %struct.ECPGstruct_member*** %6, align 8
  %9 = call i64 @mm_alloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.ECPGstruct_member*
  store %struct.ECPGstruct_member* %10, %struct.ECPGstruct_member** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @mm_strdup(i8* %11)
  %13 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %14 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ECPGtype*, %struct.ECPGtype** %5, align 8
  %16 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %17 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %16, i32 0, i32 1
  store %struct.ECPGtype* %15, %struct.ECPGtype** %17, align 8
  %18 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %19 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %18, i32 0, i32 0
  store %struct.ECPGstruct_member* null, %struct.ECPGstruct_member** %19, align 8
  %20 = load %struct.ECPGstruct_member**, %struct.ECPGstruct_member*** %6, align 8
  %21 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %20, align 8
  store %struct.ECPGstruct_member* %21, %struct.ECPGstruct_member** %7, align 8
  br label %22

22:                                               ; preds = %33, %3
  %23 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %7, align 8
  %24 = icmp ne %struct.ECPGstruct_member* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %7, align 8
  %27 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %26, i32 0, i32 0
  %28 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %27, align 8
  %29 = icmp ne %struct.ECPGstruct_member* %28, null
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %7, align 8
  %35 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %34, i32 0, i32 0
  %36 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %35, align 8
  store %struct.ECPGstruct_member* %36, %struct.ECPGstruct_member** %7, align 8
  br label %22

37:                                               ; preds = %30
  %38 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %7, align 8
  %39 = icmp ne %struct.ECPGstruct_member* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %42 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %7, align 8
  %43 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %42, i32 0, i32 0
  store %struct.ECPGstruct_member* %41, %struct.ECPGstruct_member** %43, align 8
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %8, align 8
  %46 = load %struct.ECPGstruct_member**, %struct.ECPGstruct_member*** %6, align 8
  store %struct.ECPGstruct_member* %45, %struct.ECPGstruct_member** %46, align 8
  br label %47

47:                                               ; preds = %44, %40
  ret void
}

declare dso_local i64 @mm_alloc(i32) #1

declare dso_local i32 @mm_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
