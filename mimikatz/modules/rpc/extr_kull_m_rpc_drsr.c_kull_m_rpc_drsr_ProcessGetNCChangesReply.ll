; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_ProcessGetNCChangesReply.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_ProcessGetNCChangesReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@kull_m_rpc_drsr_encrypted_oids = common dso_local global i64* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 77, i32 97, i32 107, i32 101, i32 65, i32 116, i32 116, i32 105, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 83, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_rpc_drsr_ProcessGetNCChangesReply(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i64*, i64** @kull_m_rpc_drsr_encrypted_oids, align 8
  %15 = call i64 @ARRAYSIZE(i64* %14)
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %42, %2
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @ARRAYSIZE(i64* %17)
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i64*, i64** @kull_m_rpc_drsr_encrypted_oids, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %17, i64 %29
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @kull_m_rpc_drsr_MakeAttid(i32* %24, i64 %28, i64* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load i64*, i64** @kull_m_rpc_drsr_encrypted_oids, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str to i8*), i64 %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %165

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %19

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %162, %45
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %8, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %163

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %162

59:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %158, %59
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %161

68:                                               ; preds = %60
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %154, %68
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @ARRAYSIZE(i64* %17)
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %157

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i64, i64* %17, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %76, %85
  br i1 %86, label %87, label %153

87:                                               ; preds = %73
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %99, label %152

99:                                               ; preds = %87
  store i64 0, i64* %12, align 8
  br label %100

100:                                              ; preds = %148, %99
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %101, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %100
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %113
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %140
  %142 = call i32 @kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt(%struct.TYPE_13__* %141, i32* null)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %129
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %165

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %113
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %100

151:                                              ; preds = %100
  br label %152

152:                                              ; preds = %151, %87
  br label %157

153:                                              ; preds = %73
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  br label %69

157:                                              ; preds = %152, %69
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %10, align 8
  br label %60

161:                                              ; preds = %60
  br label %162

162:                                              ; preds = %161, %49
  br label %46

163:                                              ; preds = %46
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %165

165:                                              ; preds = %163, %144, %34
  %166 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @ARRAYSIZE(i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @kull_m_rpc_drsr_MakeAttid(i32*, i64, i64*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

declare dso_local i32 @kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt(%struct.TYPE_13__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
