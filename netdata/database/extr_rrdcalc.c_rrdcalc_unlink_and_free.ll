; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdcalc.c_rrdcalc_unlink_and_free.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdcalc.c_rrdcalc_unlink_and_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_8__*, i64 }

@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Health removing alarm '%s.%s' of host '%s'\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NOCHART\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Cannot unlink alarm '%s.%s' from host '%s': not found\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Cannot remove the health alarm index from health_log\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Cannot remove the health alarm index from idx_name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdcalc_unlink_and_free(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %152

14:                                               ; preds = %2
  %15 = load i32, i32* @D_HEALTH, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8* [ %23, %20 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @debug(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %29, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = call i32 @rrdsetcalc_unlink(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = icmp eq %struct.TYPE_8__* %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  br label %107

56:                                               ; preds = %41
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %5, align 8
  br label %60

60:                                               ; preds = %72, %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = icmp ne %struct.TYPE_8__* %66, %67
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi i1 [ false, %60 ], [ %68, %63 ]
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %5, align 8
  br label %60

76:                                               ; preds = %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %86, align 8
  br label %106

87:                                               ; preds = %76
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %97

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %96 ]
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %101, i32 %104)
  br label %106

106:                                              ; preds = %97, %79
  br label %107

107:                                              ; preds = %106, %50
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = bitcast %struct.TYPE_8__* %110 to i32*
  %112 = call i64 @avl_search_lock(i32* %109, i32* %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %6, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = bitcast %struct.TYPE_8__* %119 to i32*
  %121 = call i64 @avl_remove_lock(i32* %118, i32* %120)
  %122 = inttoptr i64 %121 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %6, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %116
  %126 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %116
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = bitcast %struct.TYPE_8__* %131 to i32*
  %133 = call i64 @avl_search_lock(i32* %130, i32* %132)
  %134 = inttoptr i64 %133 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %6, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = icmp ne %struct.TYPE_8__* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %128
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = bitcast %struct.TYPE_8__* %140 to i32*
  %142 = call i64 @avl_remove_lock(i32* %139, i32* %141)
  %143 = inttoptr i64 %142 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %143, %struct.TYPE_8__** %6, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = icmp ne %struct.TYPE_8__* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %137
  br label %149

149:                                              ; preds = %148, %128
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = call i32 @rrdcalc_free(%struct.TYPE_8__* %150)
  br label %152

152:                                              ; preds = %149, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @rrdsetcalc_unlink(%struct.TYPE_8__*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @avl_search_lock(i32*, i32*) #1

declare dso_local i64 @avl_remove_lock(i32*, i32*) #1

declare dso_local i32 @rrdcalc_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
