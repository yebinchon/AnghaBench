; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_lingering_trigger.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_lingering_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32**, i32 }

@LDAP_MOD_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i32] [i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 76, i32 105, i32 110, i32 103, i32 101, i32 114, i32 105, i32 110, i32 103, i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 58, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [33 x i32] [i32 114, i32 101, i32 109, i32 111, i32 118, i32 101, i32 76, i32 105, i32 110, i32 103, i32 101, i32 114, i32 105, i32 110, i32 103, i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_lingering_trigger(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32*], align 16
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca [2 x %struct.TYPE_4__*], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast [2 x i32*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %13 = load i32, i32* @LDAP_MOD_REPLACE, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32** bitcast ([22 x i32]* @.str to i32**), i32*** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %19 = ptrtoint i32** %18 to i32
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_4__*], [2 x %struct.TYPE_4__*]* %10, i64 0, i64 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %21, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @kull_m_string_sprintf(i32** %22, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [2 x %struct.TYPE_4__*], [2 x %struct.TYPE_4__*]* %10, i64 0, i64 0
  %30 = call i32 @ldap_modify_s(i32* %28, i8* bitcast ([1 x i32]* @.str.2 to i8*), %struct.TYPE_4__** %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.3 to i8*), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %38 = load i32*, i32** %37, align 16
  %39 = call i32 @LocalFree(i32* %38)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i32**, i8*, i32*, i32*) #2

declare dso_local i32 @ldap_modify_s(i32*, i8*, %struct.TYPE_4__**) #2

declare dso_local i32 @PRINT_ERROR(i8*, i32, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
