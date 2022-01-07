; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_trusted_proc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_trusted_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@ProcedureRelationId = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sepgsql_avc_trusted_proc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i8* (...) @sepgsql_get_client_label()
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @ProcedureRelationId, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %14 = call i8* @GetSecurityLabel(%struct.TYPE_6__* %5, i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = call i32 (...) @sepgsql_avc_check_valid()
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %23 = call %struct.TYPE_5__* @sepgsql_avc_lookup(i8* %20, i8* %21, i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  br label %29

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* (...) @sepgsql_avc_unlabeled()
  %27 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %28 = call %struct.TYPE_5__* @sepgsql_avc_lookup(i8* %25, i8* %26, i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %6, align 8
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  %31 = call i32 (...) @sepgsql_avc_check_valid()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %16, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  ret i8* %37
}

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i8* @GetSecurityLabel(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sepgsql_avc_check_valid(...) #1

declare dso_local %struct.TYPE_5__* @sepgsql_avc_lookup(i8*, i8*, i32) #1

declare dso_local i8* @sepgsql_avc_unlabeled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
