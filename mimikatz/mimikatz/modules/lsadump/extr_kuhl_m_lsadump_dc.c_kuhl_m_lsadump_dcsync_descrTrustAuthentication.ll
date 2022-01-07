; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrTrustAuthentication.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrTrustAuthentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@szOID_ANSI_trustAuthIncoming = common dso_local global i32 0, align 4
@szOID_ANSI_trustAuthOutgoing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 32, i32 32, i32 73, i32 110, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 32, i32 73, i32 110, i32 45, i32 49, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 32, i32 79, i32 117, i32 116, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 79, i32 117, i32 116, i32 45, i32 49, i32 0], align 4
@NTDS_LSA_AUTH_INFORMATIONS = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_dcsync_descrTrustAuthentication(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @szOID_ANSI_trustAuthIncoming, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @szOID_ANSI_trustAuthOutgoing, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %18, i32* %19, i32 %27, i64* %11, i32* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store i8* bitcast ([6 x i32]* @.str to i8*), i8** %14, align 8
  store i8* bitcast ([6 x i32]* @.str.1 to i8*), i8** %15, align 8
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %17, align 4
  br label %39

36:                                               ; preds = %30
  store i8* bitcast ([6 x i32]* @.str.2 to i8*), i8** %14, align 8
  store i8* bitcast ([6 x i32]* @.str.3 to i8*), i8** %15, align 8
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %11, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %13, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %53 = ptrtoint %struct.TYPE_2__* %52 to i64
  %54 = load i32, i32* @NTDS_LSA_AUTH_INFORMATIONS, align 4
  %55 = load i32, i32* @count, align 4
  %56 = call i64 @FIELD_OFFSET(i32 %54, i32 %55)
  %57 = add nsw i64 %53, %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = trunc i64 %61 to i32
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @kuhl_m_lsadump_trust_authinformation(i32* null, i32 0, i32 %62, i8* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %51, %46
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %74 = ptrtoint %struct.TYPE_2__* %73 to i64
  %75 = load i32, i32* @NTDS_LSA_AUTH_INFORMATIONS, align 4
  %76 = load i32, i32* @count, align 4
  %77 = call i64 @FIELD_OFFSET(i32 %75, i32 %76)
  %78 = add nsw i64 %74, %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = trunc i64 %82 to i32
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @kuhl_m_lsadump_trust_authinformation(i32* null, i32 0, i32 %83, i8* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %72, %67
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89, %26
  ret void
}

declare dso_local i64 @kull_m_rpc_drsr_findMonoAttr(i32*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_trust_authinformation(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
