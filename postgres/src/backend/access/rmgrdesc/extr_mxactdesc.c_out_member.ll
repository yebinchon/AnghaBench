; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_mxactdesc.c_out_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_mxactdesc.c_out_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(keysh) \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(sh) \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"(fornokeyupd) \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(forupd) \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"(nokeyupd) \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(upd) \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(unk) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @out_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_member(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @appendStringInfo(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 133, label %13
    i32 131, label %16
    i32 132, label %19
    i32 130, label %22
    i32 129, label %25
    i32 128, label %28
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @appendStringInfoString(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @appendStringInfoString(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @appendStringInfoString(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @appendStringInfoString(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @appendStringInfoString(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @appendStringInfoString(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @appendStringInfoString(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28, %25, %22, %19, %16, %13
  ret void
}

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
