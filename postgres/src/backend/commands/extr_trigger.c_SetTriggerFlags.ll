; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_SetTriggerFlags.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_SetTriggerFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@TRIGGER_TYPE_ROW = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_AFTER = common dso_local global i32 0, align 4
@TRIGGER_TYPE_INSTEAD = common dso_local global i32 0, align 4
@TRIGGER_TYPE_STATEMENT = common dso_local global i32 0, align 4
@TRIGGER_TYPE_UPDATE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_DELETE = common dso_local global i32 0, align 4
@TRIGGER_TYPE_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @SetTriggerFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetTriggerFlags(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %11 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %12 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %13 = call i32 @TRIGGER_TYPE_MATCHES(i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 20
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %20 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %21 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %22 = call i32 @TRIGGER_TYPE_MATCHES(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %29 = load i32, i32* @TRIGGER_TYPE_INSTEAD, align 4
  %30 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %31 = call i32 @TRIGGER_TYPE_MATCHES(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %38 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %39 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %40 = call i32 @TRIGGER_TYPE_MATCHES(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %47 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %48 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  %49 = call i32 @TRIGGER_TYPE_MATCHES(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %56 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %57 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %58 = call i32 @TRIGGER_TYPE_MATCHES(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %65 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %66 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %67 = call i32 @TRIGGER_TYPE_MATCHES(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %74 = load i32, i32* @TRIGGER_TYPE_INSTEAD, align 4
  %75 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %76 = call i32 @TRIGGER_TYPE_MATCHES(i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %83 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %84 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %85 = call i32 @TRIGGER_TYPE_MATCHES(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %92 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %93 = load i32, i32* @TRIGGER_TYPE_UPDATE, align 4
  %94 = call i32 @TRIGGER_TYPE_MATCHES(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %101 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %102 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %103 = call i32 @TRIGGER_TYPE_MATCHES(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %110 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %111 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %112 = call i32 @TRIGGER_TYPE_MATCHES(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @TRIGGER_TYPE_ROW, align 4
  %119 = load i32, i32* @TRIGGER_TYPE_INSTEAD, align 4
  %120 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %121 = call i32 @TRIGGER_TYPE_MATCHES(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %128 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %129 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %130 = call i32 @TRIGGER_TYPE_MATCHES(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %137 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %138 = load i32, i32* @TRIGGER_TYPE_DELETE, align 4
  %139 = call i32 @TRIGGER_TYPE_MATCHES(i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %146 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  %147 = load i32, i32* @TRIGGER_TYPE_TRUNCATE, align 4
  %148 = call i32 @TRIGGER_TYPE_MATCHES(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @TRIGGER_TYPE_STATEMENT, align 4
  %155 = load i32, i32* @TRIGGER_TYPE_AFTER, align 4
  %156 = load i32, i32* @TRIGGER_TYPE_TRUNCATE, align 4
  %157 = call i32 @TRIGGER_TYPE_MATCHES(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @TRIGGER_FOR_INSERT(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %2
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @TRIGGER_USES_TRANSITION_TABLE(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %165, %2
  %172 = phi i1 [ false, %2 ], [ %170, %165 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i64 @TRIGGER_FOR_UPDATE(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %171
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @TRIGGER_USES_TRANSITION_TABLE(i32 %184)
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %181, %171
  %188 = phi i1 [ false, %171 ], [ %186, %181 ]
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i64 @TRIGGER_FOR_UPDATE(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %187
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @TRIGGER_USES_TRANSITION_TABLE(i32 %200)
  %202 = icmp ne i64 %201, 0
  br label %203

203:                                              ; preds = %197, %187
  %204 = phi i1 [ false, %187 ], [ %202, %197 ]
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i64 @TRIGGER_FOR_DELETE(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %203
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @TRIGGER_USES_TRANSITION_TABLE(i32 %216)
  %218 = icmp ne i64 %217, 0
  br label %219

219:                                              ; preds = %213, %203
  %220 = phi i1 [ false, %203 ], [ %218, %213 ]
  %221 = zext i1 %220 to i32
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  ret void
}

declare dso_local i32 @TRIGGER_TYPE_MATCHES(i32, i32, i32, i32) #1

declare dso_local i64 @TRIGGER_FOR_INSERT(i32) #1

declare dso_local i64 @TRIGGER_USES_TRANSITION_TABLE(i32) #1

declare dso_local i64 @TRIGGER_FOR_UPDATE(i32) #1

declare dso_local i64 @TRIGGER_FOR_DELETE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
