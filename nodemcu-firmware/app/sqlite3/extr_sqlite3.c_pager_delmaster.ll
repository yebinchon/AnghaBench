; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_delmaster.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pager_delmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OPEN_MASTER_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @pager_delmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_delmaster(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %5, align 8
  store i8* null, i8** %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i64 @sqlite3MallocZero(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %41 = load i32, i32* @SQLITE_OPEN_MASTER_JOURNAL, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @sqlite3OsOpen(%struct.TYPE_7__* %43, i8* %44, i8* %45, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %169

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @sqlite3OsFileSize(i8* %54, i32* %10)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %169

60:                                               ; preds = %53
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  %69 = call i8* @sqlite3Malloc(i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %73, i32* %6, align 4
  br label %169

74:                                               ; preds = %60
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @sqlite3OsRead(i8* %80, i8* %81, i32 %82, i32 0)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %169

88:                                               ; preds = %74
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %11, align 8
  br label %94

94:                                               ; preds = %157, %88
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %103, label %163

103:                                              ; preds = %94
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %107 = call i32 @sqlite3OsAccess(%struct.TYPE_7__* %104, i8* %105, i32 %106, i32* %15)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %169

112:                                              ; preds = %103
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %112
  %116 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %117 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %17, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @sqlite3OsOpen(%struct.TYPE_7__* %119, i8* %120, i8* %121, i32 %122, i32 0)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %169

128:                                              ; preds = %115
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @readMasterJournal(i8* %129, i8* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @sqlite3OsClose(i8* %133)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SQLITE_OK, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %169

139:                                              ; preds = %128
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @strcmp(i8* %146, i8* %147)
  %149 = icmp eq i64 %148, 0
  br label %150

150:                                              ; preds = %145, %139
  %151 = phi i1 [ false, %139 ], [ %149, %145 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %169

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %112
  %158 = load i8*, i8** %11, align 8
  %159 = call i64 @sqlite3Strlen30(i8* %158)
  %160 = add nsw i64 %159, 1
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  store i8* %162, i8** %11, align 8
  br label %94

163:                                              ; preds = %94
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @sqlite3OsClose(i8* %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @sqlite3OsDelete(%struct.TYPE_7__* %166, i8* %167, i32 0)
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %163, %155, %138, %127, %111, %87, %72, %59, %52
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @sqlite3_free(i8* %170)
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @sqlite3OsClose(i8* %175)
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @isOpen(i8* %177)
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 @sqlite3_free(i8* %183)
  br label %185

185:                                              ; preds = %174, %169
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @sqlite3OsOpen(%struct.TYPE_7__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsFileSize(i8*, i32*) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3OsRead(i8*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsAccess(%struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @readMasterJournal(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3OsClose(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3OsDelete(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
