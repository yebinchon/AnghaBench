; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_check_perms_label.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_uavc.c_sepgsql_avc_check_perms_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i64, i32, i64 }

@SEPGSQL_AVC_NOAUDIT = common dso_local global i8* null, align 8
@SEPGSQL_MODE_INTERNAL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SELinux: security policy violation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sepgsql_avc_check_perms_label(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = call i8* (...) @sepgsql_get_client_label()
  store i8* %16, i8** %11, align 8
  %17 = call i32 (...) @sepgsql_avc_check_valid()
  br label %18

18:                                               ; preds = %86, %5
  store i32 1, i32* %15, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_3__* @sepgsql_avc_lookup(i8* %22, i8* %23, i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %12, align 8
  br label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %11, align 8
  %28 = call i8* (...) @sepgsql_avc_unlabeled()
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_3__* @sepgsql_avc_lookup(i8* %27, i8* %28, i32 %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %12, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, i32* %13, align 4
  %38 = call i64 (...) @sepgsql_get_debug_audit()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %14, align 4
  br label %66

49:                                               ; preds = %31
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %59, %62
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i32 [ %57, %52 ], [ %63, %58 ]
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %47
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = call i32 (...) @sepgsql_getenforce()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %84

83:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85
  %87 = call i32 (...) @sepgsql_avc_check_valid()
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %18, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** @SEPGSQL_AVC_NOAUDIT, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = call i64 (...) @sepgsql_get_mode()
  %99 = load i64, i64* @SEPGSQL_MODE_INTERNAL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  br label %118

116:                                              ; preds = %101
  %117 = call i8* (...) @sepgsql_avc_unlabeled()
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i8* [ %115, %112 ], [ %117, %116 ]
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @sepgsql_audit_log(i32 %104, i32 %107, i8* %119, i32 %122, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %118, %97, %93, %90
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %129, %126
  %139 = load i32, i32* %15, align 4
  ret i32 %139
}

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i32 @sepgsql_avc_check_valid(...) #1

declare dso_local %struct.TYPE_3__* @sepgsql_avc_lookup(i8*, i8*, i32) #1

declare dso_local i8* @sepgsql_avc_unlabeled(...) #1

declare dso_local i64 @sepgsql_get_debug_audit(...) #1

declare dso_local i32 @sepgsql_getenforce(...) #1

declare dso_local i64 @sepgsql_get_mode(...) #1

declare dso_local i32 @sepgsql_audit_log(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
