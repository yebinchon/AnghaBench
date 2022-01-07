; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/adaptive_resortable_list/extr_adaptive_resortable_list.c_arl_begin.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/adaptive_resortable_list/extr_adaptive_resortable_list.c_arl_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i32, i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@ARL_ENTRY_FLAG_FOUND = common dso_local global i32 0, align 4
@ARL_ENTRY_FLAG_EXPECTED = common dso_local global i32 0, align 4
@ARL_ENTRY_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"a-really-not-existing-source-keyword\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arl_begin(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 12
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = srem i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i1 [ true, %10 ], [ %23, %15 ]
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi i1 [ false, %1 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %166

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = srem i32 %34, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 12
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  br label %50

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i64 [ %48, %45 ], [ 0, %49 ]
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 7
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 9
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %4, align 8
  br label %57

57:                                               ; preds = %161, %148, %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %165

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %60
  %68 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ARL_ENTRY_FLAG_EXPECTED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %76, %67
  br label %161

89:                                               ; preds = %60
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ARL_ENTRY_FLAG_DYNAMIC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %160

96:                                               ; preds = %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = icmp eq %struct.TYPE_8__* %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %160

107:                                              ; preds = %102, %96
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %5, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %122, align 8
  br label %123

123:                                              ; preds = %115, %107
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %135, align 8
  br label %136

136:                                              ; preds = %128, %123
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 9
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = icmp eq %struct.TYPE_8__* %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 9
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %147, align 8
  br label %148

148:                                              ; preds = %142, %136
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = call i32 @freez(%struct.TYPE_8__* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = call i32 @freez(%struct.TYPE_8__* %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %159, %struct.TYPE_8__** %4, align 8
  br label %57

160:                                              ; preds = %102, %89
  br label %161

161:                                              ; preds = %160, %88
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %4, align 8
  br label %57

165:                                              ; preds = %57
  br label %166

166:                                              ; preds = %165, %26
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 9
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = icmp ne %struct.TYPE_8__* %169, null
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %177 = call i32 @arl_expect(%struct.TYPE_9__* %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %178

178:                                              ; preds = %175, %166
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 9
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 10
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 8
  store i64 0, i64* %189, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @freez(%struct.TYPE_8__*) #1

declare dso_local i32 @arl_expect(%struct.TYPE_9__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
