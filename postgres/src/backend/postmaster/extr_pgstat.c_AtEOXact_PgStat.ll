; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_AtEOXact_PgStat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_AtEOXact_PgStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, %struct.TYPE_9__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i32, i32, i32 }

@pgStatXactCommit = common dso_local global i32 0, align 4
@pgStatXactRollback = common dso_local global i32 0, align 4
@pgStatXactStack = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_PgStat(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @pgStatXactCommit, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @pgStatXactCommit, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @pgStatXactRollback, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @pgStatXactRollback, align 4
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgStatXactStack, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %186

24:                                               ; preds = %20
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  br label %40

40:                                               ; preds = %181, %24
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %185

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = icmp eq %struct.TYPE_8__* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %43
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = call i32 @pgstat_truncate_restore_counters(%struct.TYPE_8__* %69)
  br label %71

71:                                               ; preds = %68, %43
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %84
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %94
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %165

104:                                              ; preds = %71
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i64 %107, i64* %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %104
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %129
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %141
  store i64 %146, i64* %144, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %157
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 8
  br label %178

165:                                              ; preds = %71
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %172
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %165, %122
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %180, align 8
  br label %181

181:                                              ; preds = %178
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  store %struct.TYPE_8__* %184, %struct.TYPE_8__** %6, align 8
  br label %40

185:                                              ; preds = %40
  br label %186

186:                                              ; preds = %185, %20
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @pgStatXactStack, align 8
  %187 = call i32 (...) @pgstat_clear_snapshot()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pgstat_truncate_restore_counters(%struct.TYPE_8__*) #1

declare dso_local i32 @pgstat_clear_snapshot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
