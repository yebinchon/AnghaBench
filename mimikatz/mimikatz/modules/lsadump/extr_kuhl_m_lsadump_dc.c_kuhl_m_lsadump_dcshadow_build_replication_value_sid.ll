; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_sid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [11 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 65, i32 108, i32 108, i32 111, i32 99, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 67, i32 111, i32 110, i32 118, i32 101, i32 114, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 83, i32 105, i32 100, i32 84, i32 111, i32 83, i32 105, i32 100, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_sid(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @ConvertStringSidToSid(i32 %9, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GetLengthSid(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @MIDL_user_allocate(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = icmp ne i32* %21, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @RtlCopyMemory(i32* %28, i32 %29, i32 %32)
  br label %36

34:                                               ; preds = %12
  %35 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([11 x i32]* @.str to i8*))
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @LocalFree(i32 %37)
  br label %41

39:                                               ; preds = %2
  %40 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.1 to i8*))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i64 @ConvertStringSidToSid(i32, i32*) #1

declare dso_local i32 @GetLengthSid(i32) #1

declare dso_local i64 @MIDL_user_allocate(i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
