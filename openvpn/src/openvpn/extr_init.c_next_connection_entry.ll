; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_next_connection_entry.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_next_connection_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.connection_entry, i32, %struct.connection_list* }
%struct.connection_entry = type { i32 }
%struct.connection_list = type { i64, i64, %struct.connection_entry** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No usable connection profiles are present\00", align 1
@CE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"All connections have been connect-retry-max (%d) times unsuccessful, exiting\00", align 1
@management = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @next_connection_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_connection_entry(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.connection_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 5
  %10 = load %struct.connection_list*, %struct.connection_list** %9, align 8
  store %struct.connection_list* %10, %struct.connection_list** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %136, %1
  store i32 1, i32* %4, align 4
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %19 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %113

26:                                               ; preds = %17, %11
  %27 = load %struct.context*, %struct.context** %2, align 8
  %28 = getelementptr inbounds %struct.context, %struct.context* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.context*, %struct.context** %2, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.context*, %struct.context** %2, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %53, align 8
  br label %112

54:                                               ; preds = %33, %26
  %55 = load %struct.context*, %struct.context** %2, align 8
  %56 = getelementptr inbounds %struct.context, %struct.context* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp eq %struct.TYPE_5__* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.context*, %struct.context** %2, align 8
  %70 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = icmp eq %struct.TYPE_5__* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  br label %87

77:                                               ; preds = %54
  %78 = load %struct.context*, %struct.context** %2, align 8
  %79 = getelementptr inbounds %struct.context, %struct.context* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load %struct.context*, %struct.context** %2, align 8
  %84 = getelementptr inbounds %struct.context, %struct.context* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %86, align 8
  br label %87

87:                                               ; preds = %77, %60
  %88 = load %struct.context*, %struct.context** %2, align 8
  %89 = getelementptr inbounds %struct.context, %struct.context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %94 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %98 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %87
  %102 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %103 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @M_FATAL, align 4
  %109 = call i32 (i32, i8*, ...) @msg(i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %101
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %42
  br label %113

113:                                              ; preds = %112, %22
  %114 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %115 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %114, i32 0, i32 2
  %116 = load %struct.connection_entry**, %struct.connection_entry*** %115, align 8
  %117 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %118 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %116, i64 %119
  %121 = load %struct.connection_entry*, %struct.connection_entry** %120, align 8
  store %struct.connection_entry* %121, %struct.connection_entry** %5, align 8
  %122 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %123 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CE_DISABLED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %113
  %130 = load %struct.context*, %struct.context** %2, align 8
  %131 = getelementptr inbounds %struct.context, %struct.context* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %134 = bitcast %struct.connection_entry* %132 to i8*
  %135 = bitcast %struct.connection_entry* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %11, label %140

140:                                              ; preds = %136
  %141 = load %struct.context*, %struct.context** %2, align 8
  %142 = getelementptr inbounds %struct.context, %struct.context* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %140
  %147 = load %struct.context*, %struct.context** %2, align 8
  %148 = getelementptr inbounds %struct.context, %struct.context* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %153 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.context*, %struct.context** %2, align 8
  %156 = getelementptr inbounds %struct.context, %struct.context* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = mul i64 %154, %159
  %161 = icmp ugt i64 %151, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %146
  %163 = load i32, i32* @M_FATAL, align 4
  %164 = load %struct.context*, %struct.context** %2, align 8
  %165 = getelementptr inbounds %struct.context, %struct.context* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @msg(i32 %163, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %162, %146, %140
  %170 = load %struct.context*, %struct.context** %2, align 8
  %171 = getelementptr inbounds %struct.context, %struct.context* %170, i32 0, i32 0
  %172 = call i32 @update_options_ce_post(%struct.TYPE_8__* %171)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_options_ce_post(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
