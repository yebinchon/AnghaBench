; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_compute_avd.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_compute_avd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.av_decision = type { i32, i32, i32, i64 }

@SEPG_CLASS_MAX = common dso_local global i64 0, align 8
@selinux_catalog = common dso_local global %struct.TYPE_4__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"SELinux could not compute av_decision: scontext=%s tcontext=%s tclass=%s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_compute_avd(i8* %0, i8* %1, i64 %2, %struct.av_decision* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.av_decision*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.av_decision, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.av_decision* %3, %struct.av_decision** %8, align 8
  %17 = call i32 (...) @security_deny_unknown()
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @SEPG_CLASS_MAX, align 8
  %20 = icmp ult i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @selinux_catalog, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @selinux_catalog, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @string_to_security_class(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %4
  %42 = call i32 (...) @security_deny_unknown()
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 -1
  %46 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %47 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %49 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %51 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %50, i32 0, i32 2
  store i32 -1, i32* %51, align 8
  %52 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %53 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %168

54:                                               ; preds = %4
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @security_compute_av_flags_raw(i32 %56, i32 %58, i64 %59, i32 0, %struct.av_decision* %11)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %66, i8* %67, i8* %68)
  %70 = call i32 @ereport(i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %62, %54
  %72 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %73 = call i32 @memset(%struct.av_decision* %72, i32 0, i32 24)
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %164, %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @selinux_catalog, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %167

86:                                               ; preds = %74
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @selinux_catalog, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %15, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @selinux_catalog, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %16, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @string_to_av_perm(i64 %107, i8* %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %86
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %118 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %124 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %164

127:                                              ; preds = %86
  %128 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %136 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %127
  %140 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %148 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %139
  %152 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %160 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %151
  br label %164

164:                                              ; preds = %163, %121
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %74

167:                                              ; preds = %74
  br label %168

168:                                              ; preds = %167, %41
  ret void
}

declare dso_local i32 @security_deny_unknown(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @string_to_security_class(i8*) #1

declare dso_local i64 @security_compute_av_flags_raw(i32, i32, i64, i32, %struct.av_decision*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.av_decision*, i32, i32) #1

declare dso_local i32 @string_to_av_perm(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
